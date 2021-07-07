using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace ICMS.models
{
    public class Product
    {
        public int ID { get; set; }
        [Required, Display(Name ="Enter product Name"), MaxLength(200), MinLength(5)]
        public string ProductName { get; set; }
        public string ShortDescription { get; set; }
        [Required, Display(Name = "Product Description"), DataType(DataType.MultilineText)]
        public string Description { get; set; }
        public decimal Price { get; set; }
        public string ProductImg { get; set; }
        public int Quantity { get; set; }
        [Required]
        public string Category { get; set; }
    }
}