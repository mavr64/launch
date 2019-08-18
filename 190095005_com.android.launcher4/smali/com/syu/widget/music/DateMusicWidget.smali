.class public Lcom/syu/widget/music/DateMusicWidget;
.super Lcom/syu/widget/music/Widget;
.source "DateMusicWidget.java"


# static fields
.field private static final mImageId:[I

.field private static final mImageRes:[I


# instance fields
.field private count:I

.field private music_path_pre:Ljava/lang/String;

.field private runAnimation:Z

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const/16 v0, 0xa

    new-array v0, v0, [I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->num00:I

    aput v1, v0, v3

    .line 45
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->num01:I

    aput v1, v0, v4

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->num02:I

    aput v1, v0, v5

    .line 46
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->num03:I

    aput v1, v0, v6

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->num04:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 47
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num05:I

    aput v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num06:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 48
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num07:I

    aput v2, v0, v1

    const/16 v1, 0x8

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num08:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 49
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num09:I

    aput v2, v0, v1

    .line 44
    sput-object v0, Lcom/syu/widget/music/DateMusicWidget;->mImageRes:[I

    .line 51
    new-array v0, v7, [I

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->mtu_img_ht1:I

    aput v1, v0, v3

    .line 52
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->mtu_img_hu1:I

    aput v1, v0, v4

    .line 53
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->mtu_img_mt1:I

    aput v1, v0, v5

    .line 54
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->mtu_img_mu1:I

    aput v1, v0, v6

    .line 51
    sput-object v0, Lcom/syu/widget/music/DateMusicWidget;->mImageId:[I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/syu/widget/music/Widget;-><init>(Landroid/content/Context;I)V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/widget/music/DateMusicWidget;->music_path_pre:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/syu/widget/music/DateMusicWidget;->count:I

    .line 61
    iput-boolean v1, p0, Lcom/syu/widget/music/DateMusicWidget;->runAnimation:Z

    .line 62
    new-instance v0, Lcom/syu/widget/music/DateMusicWidget$1;

    invoke-direct {v0, p0}, Lcom/syu/widget/music/DateMusicWidget$1;-><init>(Lcom/syu/widget/music/DateMusicWidget;)V

    iput-object v0, p0, Lcom/syu/widget/music/DateMusicWidget;->runnable:Ljava/lang/Runnable;

    .line 58
    return-void
.end method

.method public static makeRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v14, 0x0

    .line 407
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 408
    .local v12, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 409
    .local v3, "height":I
    const/4 v4, 0x0

    .local v4, "left":I
    const/4 v11, 0x0

    .local v11, "top":I
    move v9, v12

    .local v9, "right":I
    move v0, v3

    .line 410
    .local v0, "bottom":I
    div-int/lit8 v13, v3, 0x2

    int-to-float v10, v13

    .line 411
    .local v10, "roundPx":F
    if-le v12, v3, :cond_1

    .line 412
    sub-int v13, v12, v3

    div-int/lit8 v4, v13, 0x2

    .line 413
    const/4 v11, 0x0

    .line 414
    add-int v9, v4, v3

    .line 415
    move v0, v3

    .line 425
    :cond_0
    :goto_0
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 424
    invoke-static {v12, v3, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 426
    .local v5, "output":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 427
    .local v1, "canvas":Landroid/graphics/Canvas;
    const v2, -0xbdbdbe

    .line 428
    .local v2, "color":I
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 429
    .local v6, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v4, v11, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 430
    .local v7, "rect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 432
    .local v8, "rectF":Landroid/graphics/RectF;
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 433
    invoke-virtual {v1, v14, v14, v14, v14}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 434
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    invoke-virtual {v1, v8, v10, v10, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 436
    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 437
    invoke-virtual {v1, p0, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 438
    return-object v5

    .line 416
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "color":I
    .end local v5    # "output":Landroid/graphics/Bitmap;
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v8    # "rectF":Landroid/graphics/RectF;
    :cond_1
    if-le v3, v12, :cond_0

    .line 417
    const/4 v4, 0x0

    .line 418
    sub-int v13, v3, v12

    div-int/lit8 v11, v13, 0x2

    .line 419
    move v9, v12

    .line 420
    add-int v0, v11, v12

    .line 421
    div-int/lit8 v13, v12, 0x2

    int-to-float v10, v13

    goto :goto_0
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "origin"    # Landroid/graphics/Bitmap;
    .param p2, "newWidth"    # I
    .param p3, "newHeight"    # I
    .param p4, "roundRect"    # F

    .prologue
    .line 456
    if-nez p1, :cond_1

    .line 457
    const/16 v16, 0x0

    .line 496
    :cond_0
    :goto_0
    return-object v16

    .line 460
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 461
    .local v8, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 462
    .local v9, "height":I
    move/from16 v0, p2

    if-lt v8, v0, :cond_2

    move/from16 v0, p3

    if-ge v9, v0, :cond_3

    .line 463
    :cond_2
    move/from16 v0, p2

    int-to-float v5, v0

    int-to-float v6, v8

    div-float v19, v5, v6

    .line 464
    .local v19, "scaleWidth":F
    move/from16 v0, p3

    int-to-float v5, v0

    int-to-float v6, v9

    div-float v18, v5, v6

    .line 465
    .local v18, "scaleHeight":F
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 466
    .local v10, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 467
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 468
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 471
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    .end local v18    # "scaleHeight":F
    .end local v19    # "scaleWidth":F
    :cond_3
    sub-int v5, v8, p2

    div-int/lit8 v20, v5, 0x2

    .line 472
    .local v20, "x":I
    sub-int v5, v9, p3

    div-int/lit8 v21, v5, 0x2

    .line 473
    .local v21, "y":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 475
    .local v17, "scaleBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 476
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 475
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 477
    .local v16, "roundRectBitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 478
    .local v12, "canvas":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 479
    .local v13, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 481
    new-instance v14, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 482
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 481
    invoke-direct {v14, v5, v6, v7, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 483
    .local v14, "rect":Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 485
    .local v15, "rectf":Landroid/graphics/RectF;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {v12, v5, v6, v7, v11}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 487
    move/from16 v0, p4

    move/from16 v1, p4

    invoke-virtual {v12, v15, v0, v1, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 489
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 491
    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v14, v14, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected add()V
    .locals 0

    .prologue
    .line 375
    invoke-static {p0}, Lcom/syu/widget/music/TimeUpdateReceiver;->addWidget(Lcom/syu/widget/music/Widget;)V

    .line 376
    invoke-super {p0}, Lcom/syu/widget/music/Widget;->add()V

    .line 377
    return-void
.end method

.method addLisenter(Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v8, 0x0

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v4, "syu.widget.start"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.syu.music"

    .line 329
    const-string v6, "com.syu.music.MAct"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 330
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->dt_music_layout:I

    .line 331
    iget-object v5, p0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 330
    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 333
    new-instance v1, Landroid/content/Intent;

    const-string v4, "syu.widget.start"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v1, "intent2":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.syu.radio"

    .line 335
    const-string v6, "com.syu.radio.Launch"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 336
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->dt_radio_layout:I

    .line 337
    iget-object v5, p0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 336
    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 339
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.DATE_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v2, "mIntent3":Landroid/content/Intent;
    iget-object v4, p0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    invoke-static {v4, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 342
    .local v3, "pendIntent":Landroid/app/PendingIntent;
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->dt_layout:I

    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 345
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->musicbutton_prev:I

    .line 346
    iget-object v5, p0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    const-string v6, "com.syu.music.prev"

    invoke-virtual {p0, v5, v6}, Lcom/syu/widget/music/DateMusicWidget;->getPIntend(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 345
    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 348
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->musicbutton_playpause:I

    .line 349
    iget-object v5, p0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    const-string v6, "com.syu.music.playpause"

    invoke-virtual {p0, v5, v6}, Lcom/syu/widget/music/DateMusicWidget;->getPIntend(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 347
    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 350
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->musicbutton_next:I

    .line 351
    iget-object v5, p0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    const-string v6, "com.syu.music.next"

    invoke-virtual {p0, v5, v6}, Lcom/syu/widget/music/DateMusicWidget;->getPIntend(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 350
    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 353
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->Radiobutton_prev:I

    .line 354
    iget-object v5, p0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    const-string v6, "com.syu.radio.prevservice"

    invoke-virtual {p0, v5, v6}, Lcom/syu/widget/music/DateMusicWidget;->getPIntend(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 353
    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 355
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->Radiobutton_next:I

    .line 356
    iget-object v5, p0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    const-string v6, "com.syu.radio.nextservice"

    invoke-virtual {p0, v5, v6}, Lcom/syu/widget/music/DateMusicWidget;->getPIntend(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 355
    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 358
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->logo_icon:I

    .line 359
    iget-object v5, p0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    .line 360
    const-string v7, "com.android.launcher.carlogo"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    const/high16 v7, 0x10000000

    .line 359
    invoke-static {v5, v8, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 358
    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 362
    return-void
.end method

.method public delete()V
    .locals 0

    .prologue
    .line 381
    invoke-static {p0}, Lcom/syu/widget/music/TimeUpdateReceiver;->removeWidget(Lcom/syu/widget/music/Widget;)V

    .line 382
    invoke-super {p0}, Lcom/syu/widget/music/Widget;->delete()V

    .line 383
    return-void
.end method

.method getLayoutId()V
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->fyt_xml_dtmusicwidget:I

    iput v0, p0, Lcom/syu/widget/music/DateMusicWidget;->layoutId:I

    .line 371
    return-void
.end method

.method public getPIntend(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 365
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public timeParse(J)Ljava/lang/String;
    .locals 13
    .param p1, "duration"    # J

    .prologue
    const-wide/32 v8, 0xea60

    const-wide/16 v10, 0xa

    .line 386
    const-string v6, ""

    .line 388
    .local v6, "time":Ljava/lang/String;
    div-long v0, p1, v8

    .line 389
    .local v0, "minute":J
    rem-long v4, p1, v8

    .line 391
    .local v4, "seconds":J
    long-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v2, v7

    .line 393
    .local v2, "second":J
    cmp-long v7, v0, v10

    if-gez v7, :cond_0

    .line 394
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 396
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 398
    cmp-long v7, v2, v10

    if-gez v7, :cond_1

    .line 399
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 401
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 403
    return-object v6
.end method

.method updateViews(Landroid/widget/RemoteViews;)V
    .locals 32
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 74
    sget-object v27, Lcom/fyt/car/MusicService;->state:Ljava/lang/Boolean;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 75
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->music_icon:I

    move/from16 v27, v0

    .line 76
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lshare/ResValue;->music_animation1:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/widget/music/DateMusicWidget;->count:I

    move/from16 v29, v0

    add-int/lit8 v30, v29, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/syu/widget/music/DateMusicWidget;->count:I

    add-int v28, v28, v29

    .line 75
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 77
    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/widget/music/DateMusicWidget;->count:I

    move/from16 v27, v0

    const/16 v28, 0xa

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 78
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/syu/widget/music/DateMusicWidget;->count:I

    .line 79
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/widget/music/DateMusicWidget;->runAnimation:Z

    move/from16 v27, v0

    if-nez v27, :cond_1

    .line 80
    sget-object v27, Lcom/android/launcher4/LauncherApplication;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->runnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/syu/widget/music/DateMusicWidget;->runAnimation:Z

    .line 88
    :cond_1
    :goto_0
    sget-object v27, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    if-eqz v27, :cond_3

    .line 89
    sget-object v27, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 90
    sget-object v27, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    if-gez v27, :cond_d

    .line 92
    :cond_2
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->music_name:I

    move/from16 v27, v0

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0c0085

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 92
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 101
    :cond_3
    :goto_1
    sget-object v27, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    if-eqz v27, :cond_4

    .line 102
    sget-object v27, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->music_path_pre:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 103
    sget-object v27, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/widget/music/DateMusicWidget;->music_path_pre:Ljava/lang/String;

    .line 104
    new-instance v18, Lcom/syu/util/Lrc;

    invoke-direct/range {v18 .. v18}, Lcom/syu/util/Lrc;-><init>()V

    .line 105
    .local v18, "lrc":Lcom/syu/util/Lrc;
    sget-object v27, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/syu/util/Lrc;->getId3Info(Ljava/lang/String;)Lcom/syu/util/Id3Info;

    move-result-object v15

    .line 106
    .local v15, "info":Lcom/syu/util/Id3Info;
    iget-object v10, v15, Lcom/syu/util/Id3Info;->dataPic:[B

    .line 107
    .local v10, "dataPic":[B
    if-eqz v10, :cond_f

    array-length v0, v10

    move/from16 v27, v0

    if-lez v27, :cond_f

    .line 108
    const/16 v27, 0x0

    .line 109
    array-length v0, v10

    move/from16 v28, v0

    .line 108
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v10, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 110
    .local v6, "bp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    .line 111
    sget-object v27, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 112
    const v28, 0x7f0a001b

    .line 111
    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    .line 112
    if-eqz v27, :cond_e

    .line 114
    invoke-static {v6}, Lcom/syu/widget/music/DateMusicWidget;->makeRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 119
    :goto_2
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->ivwidget_album_bg:I

    move/from16 v27, v0

    .line 118
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 130
    .end local v6    # "bp":Landroid/graphics/Bitmap;
    .end local v10    # "dataPic":[B
    .end local v15    # "info":Lcom/syu/util/Id3Info;
    .end local v18    # "lrc":Lcom/syu/util/Lrc;
    :cond_4
    :goto_3
    sget-object v27, Lcom/fyt/car/MusicService;->author_name:Ljava/lang/String;

    if-eqz v27, :cond_5

    .line 131
    sget-object v27, Lcom/fyt/car/MusicService;->author_name:Ljava/lang/String;

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 133
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->music_art:I

    move/from16 v27, v0

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 135
    const v29, 0x7f0c0086

    .line 134
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 132
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 142
    :cond_5
    :goto_4
    sget-object v27, Lcom/fyt/car/MusicService;->state:Ljava/lang/Boolean;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    if-eqz v27, :cond_11

    .line 144
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->musicbutton_playpause:I

    move/from16 v27, v0

    .line 145
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lshare/ResValue;->music_playpause_icon:I

    move/from16 v28, v0

    .line 143
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 153
    :goto_5
    sget-wide v28, Lcom/fyt/car/MusicService;->CURMINUTES:J

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-ltz v27, :cond_8

    .line 154
    sget-wide v8, Lcom/fyt/car/MusicService;->CURMINUTES:J

    .line 155
    .local v8, "curProgress":J
    sget-wide v24, Lcom/fyt/car/MusicService;->TOTALMINUTES:J

    .line 156
    .local v24, "totalProgress":J
    const-wide/16 v28, 0x0

    cmp-long v27, v24, v28

    if-lez v27, :cond_7

    .line 157
    const-wide/16 v28, 0x0

    cmp-long v27, v8, v28

    if-gez v27, :cond_6

    .line 158
    const-wide/16 v8, 0x0

    .line 160
    :cond_6
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v8

    div-long v28, v28, v24

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v20, v0

    .line 161
    .local v20, "precent":I
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->music_progress:I

    move/from16 v27, v0

    .line 162
    const/16 v28, 0x3e8

    const/16 v29, 0x0

    .line 161
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v20

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 165
    .end local v20    # "precent":I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/syu/widget/music/DateMusicWidget;->timeParse(J)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, "cur":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/syu/widget/music/DateMusicWidget;->timeParse(J)Ljava/lang/String;

    move-result-object v23

    .line 167
    .local v23, "total":Ljava/lang/String;
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->music_cur_time:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 168
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->music_total_time:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 173
    .end local v7    # "cur":Ljava/lang/String;
    .end local v8    # "curProgress":J
    .end local v23    # "total":Ljava/lang/String;
    .end local v24    # "totalProgress":J
    :cond_8
    sget v27, Lcom/android/launcher4/Launcher;->radioFreqState:I

    const/16 v28, 0x1388

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_12

    .line 174
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->tv_band:I

    move/from16 v27, v0

    const-string v28, "FM"

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 175
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->tv_unit:I

    move/from16 v27, v0

    const-string v28, "MHz"

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 182
    :cond_9
    :goto_6
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->tv_freq:I

    move/from16 v27, v0

    .line 183
    sget-object v28, Lcom/android/launcher4/Launcher;->radioFreq:Ljava/lang/String;

    .line 182
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 186
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->dt_weekday1:I

    move/from16 v27, v0

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/syu/widget/music/util/TimeUtil;->getWeekDay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    .line 186
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 188
    sget-object v27, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 189
    const v28, 0x7f0b002a

    .line 188
    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v27

    packed-switch v27, :pswitch_data_0

    .line 204
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/syu/widget/music/util/TimeUtil;->b24Hour(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 205
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->dt_ampm1:I

    move/from16 v27, v0

    const/16 v28, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 226
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/syu/widget/music/util/TimeUtil;->getCurStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 227
    .local v12, "hm":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    .line 228
    .local v22, "times":[C
    const/4 v14, -0x1

    .line 229
    .local v14, "index":I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v16, v0

    .line 231
    .local v16, "len":I
    const/16 v27, 0x3

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 232
    sget-object v27, Lcom/syu/widget/music/DateMusicWidget;->mImageId:[I

    const/16 v28, 0x0

    aget v27, v27, v28

    const/16 v28, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 233
    sget-object v27, Lcom/syu/widget/music/DateMusicWidget;->mImageId:[I

    const/16 v28, 0x0

    aget v27, v27, v28

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 239
    :cond_a
    :goto_9
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_a
    move/from16 v0, v16

    if-lt v13, v0, :cond_17

    .line 258
    :goto_b
    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    if-nez v27, :cond_1a

    .line 259
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_icon:I

    move/from16 v27, v0

    .line 260
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lshare/ResValue;->compass_default:I

    move/from16 v28, v0

    .line 259
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 261
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_text:I

    move/from16 v27, v0

    const-string v28, "- - -"

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 314
    :cond_b
    :goto_c
    sget-object v27, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    .line 315
    const-string v28, "Launcher"

    .line 316
    const/16 v29, 0x0

    .line 315
    invoke-virtual/range {v27 .. v29}, Lcom/android/launcher4/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 318
    .local v21, "sPreferences":Landroid/content/SharedPreferences;
    const-string v27, "Carlogo"

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 320
    .local v17, "logoIndex":I
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->logo_icon:I

    move/from16 v27, v0

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "logo_"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 322
    const-string v30, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v31

    .line 321
    invoke-virtual/range {v28 .. v31}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    .line 319
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 323
    return-void

    .line 84
    .end local v12    # "hm":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "index":I
    .end local v16    # "len":I
    .end local v17    # "logoIndex":I
    .end local v21    # "sPreferences":Landroid/content/SharedPreferences;
    .end local v22    # "times":[C
    :cond_c
    sget-object v27, Lcom/android/launcher4/LauncherApplication;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->runnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/syu/widget/music/DateMusicWidget;->runAnimation:Z

    goto/16 :goto_0

    .line 95
    :cond_d
    sget-object v27, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    .line 96
    sget-object v28, Lcom/fyt/car/MusicService;->music_path:Ljava/lang/String;

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 97
    .local v19, "musictitle":Ljava/lang/String;
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->music_name:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 116
    .end local v19    # "musictitle":Ljava/lang/String;
    .restart local v6    # "bp":Landroid/graphics/Bitmap;
    .restart local v10    # "dataPic":[B
    .restart local v15    # "info":Lcom/syu/util/Id3Info;
    .restart local v18    # "lrc":Lcom/syu/util/Lrc;
    :cond_e
    const/16 v27, 0x13c

    const/16 v28, 0xfa

    const/high16 v29, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/syu/widget/music/DateMusicWidget;->scaleBitmap(Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_2

    .line 123
    .end local v6    # "bp":Landroid/graphics/Bitmap;
    :cond_f
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->ivwidget_album_bg:I

    move/from16 v27, v0

    .line 124
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lshare/ResValue;->music_album_def:I

    move/from16 v28, v0

    .line 122
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 137
    .end local v10    # "dataPic":[B
    .end local v15    # "info":Lcom/syu/util/Id3Info;
    .end local v18    # "lrc":Lcom/syu/util/Lrc;
    :cond_10
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->music_art:I

    move/from16 v27, v0

    .line 138
    sget-object v28, Lcom/fyt/car/MusicService;->author_name:Ljava/lang/String;

    .line 137
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 148
    :cond_11
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->musicbutton_playpause:I

    move/from16 v27, v0

    .line 149
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lshare/ResValue;->music_pause_icon:I

    move/from16 v28, v0

    .line 147
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 176
    :cond_12
    sget v27, Lcom/android/launcher4/Launcher;->radioFreqState:I

    const/16 v28, 0x1388

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    .line 177
    sget v27, Lcom/android/launcher4/Launcher;->radioFreqState:I

    const/16 v28, 0x1f4

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_9

    .line 178
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->tv_band:I

    move/from16 v27, v0

    const-string v28, "AM"

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 179
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->tv_unit:I

    move/from16 v27, v0

    const-string v28, "KHz"

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 191
    :pswitch_0
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->dt_date1:I

    move/from16 v27, v0

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "yyyy-MM-dd"

    invoke-static/range {v28 .. v29}, Lcom/syu/widget/music/util/TimeUtil;->getDateOfToday(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 191
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 195
    :pswitch_1
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->dt_date1:I

    move/from16 v27, v0

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "yyyy/MM/dd"

    invoke-static/range {v28 .. v29}, Lcom/syu/widget/music/util/TimeUtil;->getDateOfToday(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 195
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 199
    :pswitch_2
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->dt_date1:I

    move/from16 v27, v0

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "yyyy.MM.dd"

    invoke-static/range {v28 .. v29}, Lcom/syu/widget/music/util/TimeUtil;->getDateOfToday(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 199
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 207
    :cond_13
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->dt_ampm1:I

    move/from16 v27, v0

    .line 208
    const/16 v28, 0x0

    .line 207
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 209
    sget-object v27, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 210
    const v28, 0x7f0a0018

    .line 209
    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    .line 210
    if-eqz v27, :cond_14

    .line 211
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->dt_ampm1:I

    move/from16 v27, v0

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/syu/widget/music/util/TimeUtil;->getAmPm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    .line 211
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 215
    :cond_14
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->dt_ampm1:I

    move/from16 v28, v0

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/syu/widget/music/util/TimeUtil;->getAmPm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x7f0c0099

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 216
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 217
    if-eqz v27, :cond_15

    .line 218
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->im_am:I

    move/from16 v27, v0

    .line 214
    :goto_d
    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_8

    .line 219
    :cond_15
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->im_pm:I

    move/from16 v27, v0

    goto :goto_d

    .line 234
    .restart local v12    # "hm":Ljava/lang/String;
    .restart local v14    # "index":I
    .restart local v16    # "len":I
    .restart local v22    # "times":[C
    :cond_16
    const/16 v27, 0x3

    move/from16 v0, v16

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    .line 235
    sget-object v27, Lcom/syu/widget/music/DateMusicWidget;->mImageId:[I

    const/16 v28, 0x0

    aget v27, v27, v28

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_9

    .line 240
    .restart local v13    # "i":I
    :cond_17
    :try_start_0
    aget-char v27, v22, v13

    const/16 v28, 0x3a

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_18

    .line 242
    new-instance v27, Ljava/lang/String;

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [C

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-char v30, v22, v13

    aput-char v30, v28, v29

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>([C)V

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 243
    const/16 v27, 0x0

    sget-object v28, Lcom/syu/widget/music/DateMusicWidget;->mImageRes:[I

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v28

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 244
    if-ltz v14, :cond_18

    .line 245
    const/16 v27, 0x3

    move/from16 v0, v16

    move/from16 v1, v27

    if-le v0, v1, :cond_19

    move/from16 v26, v13

    .line 247
    .local v26, "w":I
    :goto_e
    sget-object v27, Lcom/syu/widget/music/DateMusicWidget;->mImageId:[I

    const/16 v28, 0x0

    .line 248
    sget-object v29, Lcom/syu/widget/music/DateMusicWidget;->mImageId:[I

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v26

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 247
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    aget v27, v27, v28

    .line 249
    sget-object v28, Lcom/syu/widget/music/DateMusicWidget;->mImageRes:[I

    aget v28, v28, v14

    .line 246
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v26    # "w":I
    :cond_18
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_a

    .line 245
    :cond_19
    add-int/lit8 v26, v13, 0x1

    goto :goto_e

    .line 253
    :catch_0
    move-exception v11

    .line 254
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 263
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1a
    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0x152

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_1b

    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0x168

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1c

    .line 264
    :cond_1b
    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_1d

    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0x16

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_1d

    .line 265
    :cond_1c
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_icon:I

    move/from16 v27, v0

    .line 266
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lshare/ResValue;->compass_north:I

    move/from16 v28, v0

    .line 265
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 267
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_text:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    .line 268
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0c00b1

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 267
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 270
    :cond_1d
    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0x17

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_1e

    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0x43

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_1e

    .line 271
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_icon:I

    move/from16 v27, v0

    .line 272
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lshare/ResValue;->compass_northeast:I

    move/from16 v28, v0

    .line 271
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 273
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_text:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    .line 274
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0c00b2

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 273
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 276
    :cond_1e
    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0x44

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_1f

    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0x70

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_1f

    .line 277
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_icon:I

    move/from16 v27, v0

    .line 278
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lshare/ResValue;->compass_east:I

    move/from16 v28, v0

    .line 277
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 279
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_text:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    .line 280
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0c00b3

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 279
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 282
    :cond_1f
    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0x71

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_20

    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0x9d

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_20

    .line 283
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_icon:I

    move/from16 v27, v0

    .line 284
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lshare/ResValue;->compass_southeast:I

    move/from16 v28, v0

    .line 283
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 285
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_text:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    .line 286
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0c00b4

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 285
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 288
    :cond_20
    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0x9e

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_21

    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0xca

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_21

    .line 289
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_icon:I

    move/from16 v27, v0

    .line 290
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lshare/ResValue;->compass_south:I

    move/from16 v28, v0

    .line 289
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 291
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_text:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    .line 292
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0c00b5

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 291
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 294
    :cond_21
    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0xcb

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_22

    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0xf7

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_22

    .line 295
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_icon:I

    move/from16 v27, v0

    .line 296
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lshare/ResValue;->compass_southwest:I

    move/from16 v28, v0

    .line 295
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 297
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_text:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    .line 298
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0c00b6

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 297
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 300
    :cond_22
    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0xf8

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_23

    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0x124

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_23

    .line 301
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_icon:I

    move/from16 v27, v0

    .line 302
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lshare/ResValue;->compass_west:I

    move/from16 v28, v0

    .line 301
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 303
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_text:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    .line 304
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0c00b7

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 303
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 306
    :cond_23
    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0x125

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_b

    sget v27, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v28, 0x151

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_b

    .line 307
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_icon:I

    move/from16 v27, v0

    .line 308
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lshare/ResValue;->compass_northwest:I

    move/from16 v28, v0

    .line 307
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 309
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lshare/ResValue;->compass_text:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/widget/music/DateMusicWidget;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    .line 310
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0c00b8

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 309
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
