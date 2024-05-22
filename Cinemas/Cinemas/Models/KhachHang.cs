using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Cinemas.Models;

public partial class KhachHang
{
    [Key]
    public int Idkh { get; set; }

    [Display(Name = "Họ và Tên")]
    [Required(ErrorMessage = "Vui lòng nhập Họ Tên")]
    public string TenKh { get; set; } = null!;

    [MaxLength(150)]
    [Required(ErrorMessage = "Vui lòng nhập Email")]
    [DataType(DataType.EmailAddress)]
    public string Email { get; set; } = null!;

    [MaxLength(11)]
    [Required(ErrorMessage = "Vui lòng nhập số điện thoại")]
    [Display(Name = "Phone")]
    [DataType(DataType.PhoneNumber)]
    public string Sdt { get; set; } = null!;

    public DateTime? NgaySinh { get; set; }

    public bool GioiTinh { get; set; }

    public string? DiaChi { get; set; }

    public string Password { get; set; } = null!;

    public DateTime? CreateDate { get; set; }

    public DateTime? LastLogin { get; set; }

    public bool Active { get; set; }

    public string Salt { get; set; } = null!;

    public int RoleId { get; set; }

    public string? Avatar { get; set; }

    public virtual ICollection<HoaDon> HoaDons { get; set; } = new List<HoaDon>();

    public virtual Role Role { get; set; } = null!;
}
