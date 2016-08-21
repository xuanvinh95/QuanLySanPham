/* Thủ tục thêm điện thoại vào CSDL MobileDb */
CREATE PROC use_ThemDT
	@product_name nvarchar(100)
,	@category_id int
,	@description nvarchar(500)
,	@price int
,	@product_img nvarchar(100)
,	@user_id int
AS
BEGIN
		INSERT INTO product(product_name, category_id, description, product_img, user_id) 
		VALUES (@product_name, @category_id, @description, @product_img, @user_id)
		RETURN 1 -- Thêm thành công
		RETURN -1 -- Thêm không thành công
END

--DECLARE @ret int
--EXEC @ret = use_ThemDT '71','Nguyen Van An','123 Le Loi','8456972','789456321589'
--PRINT @ret
--DROP PROC use_ThemDT

/* Thủ tục sửa thông tin điện thoại vào CSDL MobileDb */
CREATE PROC use_SuaTTDT
	@product_id int
,	@product_name nvarchar(100)
,	@category_id int
,	@description nvarchar(500)
,	@price int
,	@product_img nvarchar(100)
,	@user_id int
AS
BEGIN
		IF(EXISTS(SELECT * FROM product WHERE product_id = @product_id))
		BEGIN
				UPDATE product SET product_name = @product_name
										,category_id = @category_id
										,description = @description
										,price = @price
										,product_img = @product_img
										,user_id = @user_id
					WHERE product_id = @product_id
					RETURN 1 -- Sửa thành công
		END
		ELSE 
			BEGIN
				RETURN 0 -- Chưa tồn tại
			END
		RETURN -1 --LOI HE THONG
END

--DECLARE @ret int
--EXEC @ret = use_SuaTTDT 'KH21','Nguyen Van Ba','124 Pho Quang','2356897','123589745897'
--PRINT @ret
--DROP PROC use_SuaTTDT

/* Thủ tục xóa thông tin điện thoại vào CSDL MobileDb */
CREATE PROC use_XoaDT
	@product_id int
AS
BEGIN
		IF(NOT EXISTS(SELECT * FROM product WHERE product_id = @product_id))
		RETURN 0 -- Chưa tồn tại
		ELSE 
			BEGIN
					DELETE product WHERE product_id = @product_id
					RETURN 1 -- Sửa thành công
			END
		RETURN -1 -- Sửa không thành công
END

--DECLARE @ret int
--EXEC @ret = use_XoaDT 'KH21'
--PRINT @ret
--DROP PROC use_XoaDT

-------------------------------------------------------------------------------------------------

/* Thủ tục thêm người quản trị vào CSDL MobileDb */
CREATE PROC use_ThemNQT
	@email nvarchar(100)
,	@passwd nvarchar(100)
,	@name nvarchar(100)
,	@phone int
,	@address nvarchar(200)
,	@lv int
AS
BEGIN
		INSERT INTO tbluser(email, passwd, name, phone, address, lv) 
		VALUES (@email, @passwd, @name, @phone, @address, @lv)
		RETURN 1 -- Thêm thành công
		RETURN -1 -- Thêm không thành công
END

--DROP PROC use_ThemNQT

/* Thủ tục sửa thông tin người quản trị trong CSDL MobileDb */
CREATE PROC use_SuaTTNQT
	@user_id int
,	@email nvarchar(100)
,	@passwd nvarchar(100)
,	@name nvarchar(100)
,	@phone int
,	@address nvarchar(200)
,	@lv int
AS
BEGIN
		IF(EXISTS(SELECT * FROM tbluser WHERE user_id = @user_id))
		BEGIN
				UPDATE tbluser SET email = @email
										,passwd = @passwd
										,name = @name
										,phone = @phone
										,address = @address
										,lv = @lv
					WHERE user_id = @user_id
					RETURN 1 -- Sửa thành công
		END
		ELSE 
			BEGIN
				RETURN 0 -- Chưa tồn tại
			END
		RETURN -1 --LOI HE THONG
END

--DROP PROC use_SuaTTNQT

/* Thủ tục xóa thông tin người quản trị trong CSDL MobileDb */
CREATE PROC use_XoaNQT
	@user_id int
AS
BEGIN
		IF(NOT EXISTS(SELECT * FROM tbluser WHERE user_id = @user_id))
		RETURN 0 -- Chưa tồn tại
		ELSE 
			BEGIN
					DELETE tbluser WHERE user_id = @user_id
					RETURN 1 -- Sửa thành công
			END
		RETURN -1 -- Sửa không thành công
END

--DROP PROC use_XoaNQT