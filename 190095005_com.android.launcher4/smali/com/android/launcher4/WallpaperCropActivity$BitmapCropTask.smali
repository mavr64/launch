.class public Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;
.super Landroid/os/AsyncTask;
.source "WallpaperCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/WallpaperCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BitmapCropTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mCropBounds:Landroid/graphics/RectF;

.field mCroppedBitmap:Landroid/graphics/Bitmap;

.field mInFilePath:Ljava/lang/String;

.field mInImageBytes:[B

.field mInResId:I

.field mInStream:Ljava/io/InputStream;

.field mInUri:Landroid/net/Uri;

.field mNoCrop:Z

.field mOnBitmapCroppedHandler:Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;

.field mOnEndRunnable:Ljava/lang/Runnable;

.field mOutHeight:I

.field mOutWidth:I

.field mOutputFormat:Ljava/lang/String;

.field mResources:Landroid/content/res/Resources;

.field mRotation:I

.field mSaveCroppedBitmap:Z

.field mSetWallpaper:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "inResId"    # I
    .param p4, "cropBounds"    # Landroid/graphics/RectF;
    .param p5, "rotation"    # I
    .param p6, "outWidth"    # I
    .param p7, "outHeight"    # I
    .param p8, "setWallpaper"    # Z
    .param p9, "saveCroppedBitmap"    # Z
    .param p10, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 441
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    .line 398
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInResId:I

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 403
    const-string v0, "jpg"

    iput-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutputFormat:Ljava/lang/String;

    .line 445
    iput-object p1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    .line 446
    iput p3, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInResId:I

    .line 447
    iput-object p2, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mResources:Landroid/content/res/Resources;

    move-object v0, p0

    move-object v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    .line 448
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    .line 450
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "inUri"    # Landroid/net/Uri;
    .param p3, "cropBounds"    # Landroid/graphics/RectF;
    .param p4, "rotation"    # I
    .param p5, "outWidth"    # I
    .param p6, "outHeight"    # I
    .param p7, "setWallpaper"    # Z
    .param p8, "saveCroppedBitmap"    # Z
    .param p9, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 431
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    .line 398
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInResId:I

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 403
    const-string v0, "jpg"

    iput-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutputFormat:Ljava/lang/String;

    .line 435
    iput-object p1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    .line 436
    iput-object p2, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    .line 437
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    .line 439
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "cropBounds"    # Landroid/graphics/RectF;
    .param p4, "rotation"    # I
    .param p5, "outWidth"    # I
    .param p6, "outHeight"    # I
    .param p7, "setWallpaper"    # Z
    .param p8, "saveCroppedBitmap"    # Z
    .param p9, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 412
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    .line 398
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInResId:I

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 403
    const-string v0, "jpg"

    iput-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutputFormat:Ljava/lang/String;

    .line 416
    iput-object p1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    .line 417
    iput-object p2, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    .line 418
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    .line 420
    return-void
.end method

.method public constructor <init>([BLandroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "imageBytes"    # [B
    .param p2, "cropBounds"    # Landroid/graphics/RectF;
    .param p3, "rotation"    # I
    .param p4, "outWidth"    # I
    .param p5, "outHeight"    # I
    .param p6, "setWallpaper"    # Z
    .param p7, "saveCroppedBitmap"    # Z
    .param p8, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 422
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    .line 398
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInResId:I

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 403
    const-string v0, "jpg"

    iput-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutputFormat:Ljava/lang/String;

    .line 426
    iput-object p1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInImageBytes:[B

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    .line 427
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    .line 429
    return-void
.end method

.method private init(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "cropBounds"    # Landroid/graphics/RectF;
    .param p2, "rotation"    # I
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .param p5, "setWallpaper"    # Z
    .param p6, "saveCroppedBitmap"    # Z
    .param p7, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 456
    iput p2, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mRotation:I

    .line 457
    iput p3, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutWidth:I

    .line 458
    iput p4, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutHeight:I

    .line 459
    iput-boolean p5, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mSetWallpaper:Z

    .line 460
    iput-boolean p6, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mSaveCroppedBitmap:Z

    .line 461
    iput-object p7, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    .line 462
    return-void
.end method

.method private regenerateInputStream()V
    .locals 4

    .prologue
    .line 478
    iget-object v1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInResId:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInImageBytes:[B

    if-nez v1, :cond_0

    .line 480
    const-string v1, "Launcher3.CropActivity"

    .line 481
    const-string v2, "cannot read original file, no input URI, resource ID, or image byte array given"

    .line 480
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 487
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    .line 488
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 487
    iput-object v1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "Launcher3.CropActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot read file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 489
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 490
    iget-object v1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInStream:Ljava/io/InputStream;

    goto :goto_0

    .line 491
    :cond_2
    iget-object v1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInImageBytes:[B

    if-eqz v1, :cond_3

    .line 492
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 493
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInImageBytes:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 492
    iput-object v1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInStream:Ljava/io/InputStream;

    goto :goto_0

    .line 495
    :cond_3
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 496
    iget-object v2, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mResources:Landroid/content/res/Resources;

    iget v3, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 495
    iput-object v1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public cropBitmap()Z
    .locals 38

    .prologue
    .line 526
    const/4 v15, 0x0

    .line 528
    .local v15, "failure":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->regenerateInputStream()V

    .line 530
    const/16 v33, 0x0

    .line 531
    .local v33, "wallpaperManager":Landroid/app/WallpaperManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mSetWallpaper:Z

    move/from16 v34, v0

    if-eqz v34, :cond_0

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    .line 533
    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v34

    .line 532
    invoke-static/range {v34 .. v34}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v33

    .line 535
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mSetWallpaper:Z

    move/from16 v34, v0

    if-eqz v34, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mNoCrop:Z

    move/from16 v34, v0

    if-eqz v34, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInStream:Ljava/io/InputStream;

    move-object/from16 v34, v0

    if-eqz v34, :cond_2

    .line 537
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInStream:Ljava/io/InputStream;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    if-eqz v15, :cond_1

    const/16 v34, 0x0

    .line 711
    :goto_1
    return v34

    .line 538
    :catch_0
    move-exception v14

    .line 539
    .local v14, "e":Ljava/io/IOException;
    const-string v34, "Launcher3.CropActivity"

    const-string v35, "cannot write stream to wallpaper"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    const/4 v15, 0x1

    goto :goto_0

    .line 542
    .end local v14    # "e":Ljava/io/IOException;
    :cond_1
    const/16 v34, 0x1

    goto :goto_1

    .line 544
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInStream:Ljava/io/InputStream;

    move-object/from16 v34, v0

    if-eqz v34, :cond_12

    .line 546
    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    .line 547
    .local v29, "roundedTrueCrop":Landroid/graphics/Rect;
    new-instance v27, Landroid/graphics/Matrix;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Matrix;-><init>()V

    .line 548
    .local v27, "rotateMatrix":Landroid/graphics/Matrix;
    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    .line 549
    .local v17, "inverseRotateMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mRotation:I

    move/from16 v34, v0

    if-lez v34, :cond_3

    .line 550
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mRotation:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 551
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mRotation:I

    move/from16 v34, v0

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 554
    new-instance v34, Landroid/graphics/RectF;

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->getImageBounds()Landroid/graphics/Point;

    move-result-object v5

    .line 558
    .local v5, "bounds":Landroid/graphics/Point;
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v34, 0x0

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    aput v35, v28, v34

    const/16 v34, 0x1

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    aput v35, v28, v34

    .line 559
    .local v28, "rotatedBounds":[F
    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 560
    const/16 v34, 0x0

    const/16 v35, 0x0

    aget v35, v28, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(F)F

    move-result v35

    aput v35, v28, v34

    .line 561
    const/16 v34, 0x1

    const/16 v35, 0x1

    aget v35, v28, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(F)F

    move-result v35

    aput v35, v28, v34

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget v35, v28, v35

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    .line 564
    const/16 v36, 0x1

    aget v36, v28, v36

    move/from16 v0, v36

    neg-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    .line 563
    invoke-virtual/range {v34 .. v36}, Landroid/graphics/RectF;->offset(FF)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v35, v0

    div-int/lit8 v35, v35, 0x2

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/RectF;->offset(FF)V

    .line 568
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->regenerateInputStream()V

    .line 571
    .end local v5    # "bounds":Landroid/graphics/Point;
    .end local v28    # "rotatedBounds":[F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 573
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->width()I

    move-result v34

    if-lez v34, :cond_4

    .line 574
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v34

    if-gtz v34, :cond_5

    .line 575
    :cond_4
    const-string v34, "Launcher3.CropActivity"

    const-string v35, "crop has bad values for full size image"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v15, 0x1

    .line 577
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 581
    :cond_5
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->width()I

    move-result v34

    .line 582
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutWidth:I

    move/from16 v35, v0

    .line 581
    div-int v34, v34, v35

    .line 582
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutHeight:I

    move/from16 v36, v0

    div-int v35, v35, v36

    .line 581
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 585
    .local v30, "scaleDownSampleSize":I
    const/4 v12, 0x0

    .line 587
    .local v12, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInStream:Ljava/io/InputStream;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-static/range {v34 .. v35}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 593
    :goto_2
    const/4 v10, 0x0

    .line 594
    .local v10, "crop":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_7

    .line 596
    new-instance v23, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 597
    .local v23, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-le v0, v1, :cond_6

    .line 598
    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 600
    :cond_6
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 601
    invoke-virtual {v12}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 604
    .end local v23    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_7
    if-nez v10, :cond_a

    .line 606
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->regenerateInputStream()V

    .line 607
    const/16 v16, 0x0

    .line 608
    .local v16, "fullSize":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInStream:Ljava/io/InputStream;

    move-object/from16 v34, v0

    if-eqz v34, :cond_9

    .line 609
    new-instance v23, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 610
    .restart local v23    # "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-le v0, v1, :cond_8

    .line 611
    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 613
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInStream:Ljava/io/InputStream;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 616
    .end local v23    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_9
    if-eqz v16, :cond_a

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v35, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v35, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v35, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 622
    invoke-static/range {v16 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 626
    .end local v16    # "fullSize":Landroid/graphics/Bitmap;
    :cond_a
    if-nez v10, :cond_b

    .line 627
    const-string v34, "Launcher3.CropActivity"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "cannot decode file: "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v15, 0x1

    .line 629
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 588
    .end local v10    # "crop":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v14

    .line 589
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v34, "Launcher3.CropActivity"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "cannot open region decoder for file: "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 589
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 631
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v10    # "crop":Landroid/graphics/Bitmap;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutWidth:I

    move/from16 v34, v0

    if-lez v34, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutHeight:I

    move/from16 v34, v0

    if-gtz v34, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mRotation:I

    move/from16 v34, v0

    if-lez v34, :cond_10

    .line 632
    :cond_d
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v13, v0, [F

    const/16 v34, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    aput v35, v13, v34

    const/16 v34, 0x1

    .line 633
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    aput v35, v13, v34

    .line 634
    .local v13, "dimsAfter":[F
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 635
    const/16 v34, 0x0

    const/16 v35, 0x0

    aget v35, v13, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(F)F

    move-result v35

    aput v35, v13, v34

    .line 636
    const/16 v34, 0x1

    const/16 v35, 0x1

    aget v35, v13, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(F)F

    move-result v35

    aput v35, v13, v34

    .line 638
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutWidth:I

    move/from16 v34, v0

    if-lez v34, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutHeight:I

    move/from16 v34, v0

    if-gtz v34, :cond_f

    .line 639
    :cond_e
    const/16 v34, 0x0

    aget v34, v13, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutWidth:I

    .line 640
    const/16 v34, 0x1

    aget v34, v13, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->round(F)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutHeight:I

    .line 643
    :cond_f
    new-instance v11, Landroid/graphics/RectF;

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    aget v36, v13, v36

    const/16 v37, 0x1

    aget v37, v13, v37

    move/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 644
    .local v11, "cropRect":Landroid/graphics/RectF;
    new-instance v26, Landroid/graphics/RectF;

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutWidth:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutHeight:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v26

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 646
    .local v26, "returnRect":Landroid/graphics/RectF;
    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    .line 647
    .local v18, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mRotation:I

    move/from16 v34, v0

    if-nez v34, :cond_13

    .line 649
    sget-object v34, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 648
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    invoke-virtual {v0, v11, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 669
    :goto_3
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v34

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    .line 670
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    sget-object v36, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 669
    invoke-static/range {v34 .. v36}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 671
    .local v31, "tmp":Landroid/graphics/Bitmap;
    if-eqz v31, :cond_10

    .line 672
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v31

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 673
    .local v6, "c":Landroid/graphics/Canvas;
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    .line 674
    .local v25, "p":Landroid/graphics/Paint;
    const/16 v34, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 675
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v6, v10, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 676
    move-object/from16 v10, v31

    .line 680
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v11    # "cropRect":Landroid/graphics/RectF;
    .end local v13    # "dimsAfter":[F
    .end local v18    # "m":Landroid/graphics/Matrix;
    .end local v25    # "p":Landroid/graphics/Paint;
    .end local v26    # "returnRect":Landroid/graphics/RectF;
    .end local v31    # "tmp":Landroid/graphics/Bitmap;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mSaveCroppedBitmap:Z

    move/from16 v34, v0

    if-eqz v34, :cond_11

    .line 681
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCroppedBitmap:Landroid/graphics/Bitmap;

    .line 685
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOutputFormat:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/launcher4/WallpaperCropActivity;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/launcher4/WallpaperCropActivity;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v9

    .line 688
    .local v9, "cf":Landroid/graphics/Bitmap$CompressFormat;
    new-instance v32, Ljava/io/ByteArrayOutputStream;

    const/16 v34, 0x800

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 689
    .local v32, "tmpOut":Ljava/io/ByteArrayOutputStream;
    const/16 v34, 0x5a

    move/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v10, v9, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v34

    if-eqz v34, :cond_14

    .line 691
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mSetWallpaper:Z

    move/from16 v34, v0

    if-eqz v34, :cond_12

    if-eqz v33, :cond_12

    .line 693
    :try_start_2
    invoke-virtual/range {v32 .. v32}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    .line 695
    .local v24, "outByteArray":[B
    new-instance v34, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual/range {v33 .. v34}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOnBitmapCroppedHandler:Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;

    move-object/from16 v34, v0

    if-eqz v34, :cond_12

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOnBitmapCroppedHandler:Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;

    move-object/from16 v34, v0

    .line 699
    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;->onBitmapCropped([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 711
    .end local v9    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .end local v10    # "crop":Landroid/graphics/Bitmap;
    .end local v12    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v17    # "inverseRotateMatrix":Landroid/graphics/Matrix;
    .end local v24    # "outByteArray":[B
    .end local v27    # "rotateMatrix":Landroid/graphics/Matrix;
    .end local v29    # "roundedTrueCrop":Landroid/graphics/Rect;
    .end local v30    # "scaleDownSampleSize":I
    .end local v32    # "tmpOut":Ljava/io/ByteArrayOutputStream;
    :cond_12
    :goto_4
    if-eqz v15, :cond_15

    const/16 v34, 0x0

    goto/16 :goto_1

    .line 651
    .restart local v10    # "crop":Landroid/graphics/Bitmap;
    .restart local v11    # "cropRect":Landroid/graphics/RectF;
    .restart local v12    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v13    # "dimsAfter":[F
    .restart local v17    # "inverseRotateMatrix":Landroid/graphics/Matrix;
    .restart local v18    # "m":Landroid/graphics/Matrix;
    .restart local v26    # "returnRect":Landroid/graphics/RectF;
    .restart local v27    # "rotateMatrix":Landroid/graphics/Matrix;
    .restart local v29    # "roundedTrueCrop":Landroid/graphics/Rect;
    .restart local v30    # "scaleDownSampleSize":I
    :cond_13
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 652
    .local v19, "m1":Landroid/graphics/Matrix;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    .line 653
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    .line 652
    move-object/from16 v0, v19

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 654
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 655
    .local v20, "m2":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mRotation:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v20

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 656
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    .line 657
    .local v21, "m3":Landroid/graphics/Matrix;
    const/16 v34, 0x0

    aget v34, v13, v34

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    const/16 v35, 0x1

    aget v35, v13, v35

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    move-object/from16 v0, v21

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 658
    new-instance v22, Landroid/graphics/Matrix;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    .line 660
    .local v22, "m4":Landroid/graphics/Matrix;
    sget-object v34, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 659
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    invoke-virtual {v0, v11, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 662
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 663
    .local v7, "c1":Landroid/graphics/Matrix;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 664
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 665
    .local v8, "c2":Landroid/graphics/Matrix;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 666
    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    goto/16 :goto_3

    .line 701
    .end local v7    # "c1":Landroid/graphics/Matrix;
    .end local v8    # "c2":Landroid/graphics/Matrix;
    .end local v11    # "cropRect":Landroid/graphics/RectF;
    .end local v13    # "dimsAfter":[F
    .end local v18    # "m":Landroid/graphics/Matrix;
    .end local v19    # "m1":Landroid/graphics/Matrix;
    .end local v20    # "m2":Landroid/graphics/Matrix;
    .end local v21    # "m3":Landroid/graphics/Matrix;
    .end local v22    # "m4":Landroid/graphics/Matrix;
    .end local v26    # "returnRect":Landroid/graphics/RectF;
    .restart local v9    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .restart local v32    # "tmpOut":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v14

    .line 702
    .restart local v14    # "e":Ljava/io/IOException;
    const-string v34, "Launcher3.CropActivity"

    const-string v35, "cannot write stream to wallpaper"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    const/4 v15, 0x1

    .line 706
    goto/16 :goto_4

    .line 707
    .end local v14    # "e":Ljava/io/IOException;
    :cond_14
    const-string v34, "Launcher3.CropActivity"

    const-string v35, "cannot compress bitmap"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v15, 0x1

    goto/16 :goto_4

    .line 711
    .end local v9    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .end local v10    # "crop":Landroid/graphics/Bitmap;
    .end local v12    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v17    # "inverseRotateMatrix":Landroid/graphics/Matrix;
    .end local v27    # "rotateMatrix":Landroid/graphics/Matrix;
    .end local v29    # "roundedTrueCrop":Landroid/graphics/Rect;
    .end local v30    # "scaleDownSampleSize":I
    .end local v32    # "tmpOut":Ljava/io/ByteArrayOutputStream;
    :cond_15
    const/16 v34, 0x1

    goto/16 :goto_1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->cropBitmap()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getCroppedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCroppedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageBounds()Landroid/graphics/Point;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 505
    invoke-direct {p0}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->regenerateInputStream()V

    .line 506
    iget-object v2, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 507
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 508
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 509
    iget-object v2, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 510
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v2, :cond_0

    .line 511
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 514
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 724
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "cropBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 519
    return-void
.end method

.method public setNoCrop(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mNoCrop:Z

    .line 470
    return-void
.end method

.method public setOnBitmapCropped(Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOnBitmapCroppedHandler:Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;

    .line 466
    return-void
.end method

.method public setOnEndRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    .line 474
    return-void
.end method
