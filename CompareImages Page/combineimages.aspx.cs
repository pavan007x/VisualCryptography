using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
//using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Drawing;
using System.Security.Cryptography;

public partial class combineimages : System.Web.UI.Page
{
    static Boolean result; //Variables
    static string fn1, fn2; //Variables
    static string f1; //Variables
    static string f2; //Variables

    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "";
        //Image1.Visible = false;
        //Image2.Visible = false;
        //Image3.Visible = false;
        //Image4.Visible = false;
        //Button1.Visible = false;  
    }

    protected void Button1_Click(object sender, EventArgs e) 
    {
        Image1.Visible = true; //Set Visibility To True
        Image2.Visible = true; //Set Visibility To True
        Image3.Visible = true; //Set Visibility To True
        Image4.Visible = true;  //Set Visibility To True
        //result = true;
        if (result == true) //If It Returns true
        {
            Label3.Text = "Images are same"; //Display Text
            Image3.Visible = true; //Set to True
            Image4.Visible = true; //Set to True
            Image3.ImageUrl = "~/Compareimages/" + fn1; //Compare 3 Url With 4 Url
            Image4.ImageUrl = "~/Compareimages/" + fn2; //Compare 3 Url With 4 Url
        }
        else //If False
        {
            Image3.Visible = true; //Set to True
            Image4.Visible = true; //Set to True
            Image3.ImageUrl = "~/Compareimages/" + fn1; //Compare 3 Url With 4 Url
            Image4.ImageUrl = "~/Compareimages/" + fn2; //Compare 3 Url With 4 Url
            Label3.Text = "Images are not same"; //Display Text
        }
    }

    public bool CompareTwoImages(Bitmap img1Bitmap, Bitmap img2Bitmap) //Function to compare 2 images       
    {
        ImageConverter imgConverter = new ImageConverter(); //Converter Object  

        byte[] img1Bytes = new byte[1]; //Image1 Saved
        byte[] img2Bytes = new byte[1]; //Image2 Saved

        img1Bytes = (byte[])imgConverter.ConvertTo(img1Bitmap, img1Bytes.GetType()); //Convert Image1 to bitmap
        img2Bytes = (byte[])imgConverter.ConvertTo(img2Bitmap, img2Bytes.GetType()); //Convert Image2 to bitmap

        SHA256Managed sha256Managed = new SHA256Managed(); //SHA256Managed object

        byte[] hash1 = sha256Managed.ComputeHash(img1Bytes); //image1 hash
        byte[] hash2 = sha256Managed.ComputeHash(img2Bytes); //image2 hash

        int i = 0; //Initialize i to 0
        while (i < hash1.Length && i < hash2.Length) //Condition length of both the image
        {
            if (hash1[i] == hash2[i]) //If its equal    
            {
                return true; //Return The image 
            }
            else
            {
                return false; //Else false Display error    
            }
            i++; //Auto Increment i 
        }
        return false; //Else false 
    }
    protected void LinkButton1_Click(object sender, EventArgs e) //Link upload Button Funtion  
    {
        fn1 = Path.GetFileName(FileUpload1.PostedFile.FileName); //Upload image1 
        fn2 = Path.GetFileName(FileUpload2.PostedFile.FileName); //Upload image2 
        if (FileUpload1.HasFile) //Check image1 is available
        {
            Image1.Visible = true; //Set visibility to true
            Image1.ImageUrl = "~/Images/captchaempty10.png"; //Create Url
        }

        if (FileUpload2.HasFile) //Check image2 is available
        {
            Image2.Visible = true; //Set visibility to true
            Image2.ImageUrl = "~/Images/captchaempty10.png"; //Create Url
        }
        
        if (FileUpload1.HasFile && FileUpload2.HasFile) //If both the image is there
        {
            string fileName1 = FileUpload1.PostedFile.FileName; //Filename of image1
            string fileName2 = FileUpload2.PostedFile.FileName; //Filename of image2
            int img1Length = FileUpload1.PostedFile.ContentLength; //Length of image1
            int img2Length = FileUpload2.PostedFile.ContentLength; //Length of image2
            
            if (fileName1 == fileName2) //Compare 2 Images if true
            {
                Label3.Text = "Images are same"; //Display
            }
            else //If False
            {
                BinaryReader img1Reader = new BinaryReader(FileUpload1.PostedFile.InputStream); //Create binary reader for image1
                BinaryReader img2Reader = new BinaryReader(FileUpload2.PostedFile.InputStream); //Create binary reader for image2

                byte[] img1Bytes = img1Reader.ReadBytes(img1Length); //Read image1
                byte[] img2Bytes = img2Reader.ReadBytes(img2Length); //Read image2

                ImageConverter imgConverter = new ImageConverter(); //Image converter obj

                Image img1 = (Image)imgConverter.ConvertFrom(img1Bytes); //Convert image1 back to bytes
                Image img2 = (Image)imgConverter.ConvertFrom(img2Bytes); //Convert image2 back to bytes
                 
                Bitmap img1Bitmap = new Bitmap(img1); //save image1 as bitmap
                Bitmap img2Bitmap = new Bitmap(img2); //save image2 as bitmap

                result = CompareTwoImages(img1Bitmap, img2Bitmap); //Compare both the images

                f1 = fn1.Substring(0, fn1.Length - 5); //Create Substring function for image1
                f2 = fn2.Substring(0, fn2.Length - 5); //Create Substring function for image1

                if (f1 == f2) // Compare both the image
                    result = true; //if true return
                else
                    result = false; //else false
            }
            Button1.Visible = true;   //Set Visibility to true
        }
    }
}
