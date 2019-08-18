.class public Lcom/syu/util/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "roundRect"    # F

    .prologue
    .line 34
    if-nez p0, :cond_1

    .line 35
    const/4 v13, 0x0

    .line 66
    :cond_0
    :goto_0
    return-object v13

    .line 38
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 39
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 40
    .local v6, "height":I
    move/from16 v0, p1

    int-to-float v2, v0

    int-to-float v3, v5

    div-float v15, v2, v3

    .line 41
    .local v15, "scaleWidth":F
    move/from16 v0, p2

    int-to-float v2, v0

    int-to-float v3, v6

    div-float v14, v2, v3

    .line 42
    .local v14, "scaleHeight":F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 43
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v7, v15, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 44
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 46
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 48
    .local v13, "roundRectBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    .local v9, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 50
    .local v10, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    new-instance v11, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v11, v2, v3, v4, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    .local v11, "rect":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 55
    .local v12, "rectf":Landroid/graphics/RectF;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {v9, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 57
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-virtual {v9, v12, v0, v1, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 59
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 61
    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v11, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
