.class public Limagecoverflow/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createReflectedBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "reflectHeight"    # F

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/16 v18, 0x0

    .line 79
    :goto_0
    return-object v18

    .line 33
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 34
    .local v20, "srcWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 35
    .local v19, "srcHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 36
    .local v4, "reflectionWidth":I
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    div-int/lit8 v5, v19, 0x3

    .line 39
    .local v5, "reflectionHeight":I
    :goto_1
    if-eqz v20, :cond_1

    if-nez v19, :cond_3

    .line 40
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 37
    .end local v5    # "reflectionHeight":I
    :cond_2
    move/from16 v0, v19

    int-to-float v1, v0

    mul-float v1, v1, p1

    float-to-int v5, v1

    goto :goto_1

    .line 44
    .restart local v5    # "reflectionHeight":I
    :cond_3
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 45
    .local v6, "matrix":Landroid/graphics/Matrix;
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 49
    const/4 v2, 0x0

    .line 50
    sub-int v3, v19, v5

    .line 51
    const/4 v7, 0x0

    move-object/from16 v1, p0

    .line 49
    :try_start_0
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 53
    .local v18, "reflectionBitmap":Landroid/graphics/Bitmap;
    if-nez v18, :cond_4

    .line 54
    const/16 v18, 0x0

    goto :goto_0

    .line 57
    :cond_4
    new-instance v15, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    .local v15, "canvas":Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 60
    .local v17, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    new-instance v7, Landroid/graphics/LinearGradient;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 63
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v11, v1

    const v12, 0x70ffffff

    const v13, 0xffffff

    .line 64
    sget-object v14, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 62
    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 65
    .local v7, "shader":Landroid/graphics/LinearGradient;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 67
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 68
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 67
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 71
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v11, v1

    .line 72
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v12, v1

    move-object v8, v15

    move-object/from16 v13, v17

    .line 71
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 75
    .end local v7    # "shader":Landroid/graphics/LinearGradient;
    .end local v15    # "canvas":Landroid/graphics/Canvas;
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v18    # "reflectionBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v16

    .line 76
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    const/16 v18, 0x0

    goto/16 :goto_0
.end method
