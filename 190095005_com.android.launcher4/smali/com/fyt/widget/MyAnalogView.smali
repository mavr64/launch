.class public Lcom/fyt/widget/MyAnalogView;
.super Landroid/view/View;
.source "MyAnalogView.java"


# instance fields
.field availableHeight:I

.field availableWidth:I

.field bmdBg:Landroid/graphics/drawable/BitmapDrawable;

.field bmdHour:Landroid/graphics/drawable/BitmapDrawable;

.field bmdMinute:Landroid/graphics/drawable/BitmapDrawable;

.field bmdSecond:Landroid/graphics/drawable/BitmapDrawable;

.field centerX:I

.field centerY:I

.field mBmpBg:Landroid/graphics/Bitmap;

.field mBmpHour:Landroid/graphics/Bitmap;

.field mBmpMinute:Landroid/graphics/Bitmap;

.field mBmpSecond:Landroid/graphics/Bitmap;

.field mHeight:I

.field mPaint:Landroid/graphics/Paint;

.field mTempHeight:I

.field mTempWidth:I

.field mWidth:I

.field tickHandler:Landroid/os/Handler;

.field private tickRunnable:Ljava/lang/Runnable;

.field timeZoneStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/fyt/widget/MyAnalogView;->availableWidth:I

    .line 53
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/fyt/widget/MyAnalogView;->availableHeight:I

    .line 89
    new-instance v0, Lcom/fyt/widget/MyAnalogView$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/MyAnalogView$1;-><init>(Lcom/fyt/widget/MyAnalogView;)V

    iput-object v0, p0, Lcom/fyt/widget/MyAnalogView;->tickRunnable:Ljava/lang/Runnable;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const-string v0, "GMT+8\uff1a00"

    invoke-direct {p0, p1, v0}, Lcom/fyt/widget/MyAnalogView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;
    .param p3, "arg2"    # I

    .prologue
    .line 31
    const-string v0, "GMT+8\uff1a00"

    invoke-direct {p0, p1, v0}, Lcom/fyt/widget/MyAnalogView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/fyt/widget/MyAnalogView;->availableWidth:I

    .line 53
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/fyt/widget/MyAnalogView;->availableHeight:I

    .line 89
    new-instance v0, Lcom/fyt/widget/MyAnalogView$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/MyAnalogView$1;-><init>(Lcom/fyt/widget/MyAnalogView;)V

    iput-object v0, p0, Lcom/fyt/widget/MyAnalogView;->tickRunnable:Ljava/lang/Runnable;

    .line 57
    iput-object p2, p0, Lcom/fyt/widget/MyAnalogView;->timeZoneStr:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/fyt/widget/MyAnalogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->clock_hour:I

    .line 59
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fyt/widget/MyAnalogView;->mBmpHour:Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p0}, Lcom/fyt/widget/MyAnalogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->clock_minute:I

    .line 61
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fyt/widget/MyAnalogView;->mBmpMinute:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p0}, Lcom/fyt/widget/MyAnalogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->clock_second:I

    .line 63
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fyt/widget/MyAnalogView;->mBmpSecond:Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {p0}, Lcom/fyt/widget/MyAnalogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->clock_bg:I

    .line 65
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fyt/widget/MyAnalogView;->mBmpBg:Landroid/graphics/Bitmap;

    .line 68
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/fyt/widget/MyAnalogView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/fyt/widget/MyAnalogView;->mBmpBg:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/fyt/widget/MyAnalogView;->bmdBg:Landroid/graphics/drawable/BitmapDrawable;

    .line 69
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/fyt/widget/MyAnalogView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/fyt/widget/MyAnalogView;->mBmpHour:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/fyt/widget/MyAnalogView;->bmdHour:Landroid/graphics/drawable/BitmapDrawable;

    .line 70
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/fyt/widget/MyAnalogView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/fyt/widget/MyAnalogView;->mBmpMinute:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/fyt/widget/MyAnalogView;->bmdMinute:Landroid/graphics/drawable/BitmapDrawable;

    .line 71
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/fyt/widget/MyAnalogView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/fyt/widget/MyAnalogView;->mBmpSecond:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/fyt/widget/MyAnalogView;->bmdSecond:Landroid/graphics/drawable/BitmapDrawable;

    .line 73
    iget-object v0, p0, Lcom/fyt/widget/MyAnalogView;->mBmpBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/fyt/widget/MyAnalogView;->mWidth:I

    .line 74
    iget-object v0, p0, Lcom/fyt/widget/MyAnalogView;->mBmpBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/fyt/widget/MyAnalogView;->mHeight:I

    .line 76
    iget v0, p0, Lcom/fyt/widget/MyAnalogView;->availableWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fyt/widget/MyAnalogView;->centerX:I

    .line 77
    iget v0, p0, Lcom/fyt/widget/MyAnalogView;->availableHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fyt/widget/MyAnalogView;->centerY:I

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fyt/widget/MyAnalogView;->mPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/fyt/widget/MyAnalogView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    invoke-virtual {p0}, Lcom/fyt/widget/MyAnalogView;->run()V

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/fyt/widget/MyAnalogView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fyt/widget/MyAnalogView;->tickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 98
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 102
    .local v1, "cal":Ljava/util/Calendar;
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 103
    .local v2, "hour":I
    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 104
    .local v4, "minute":I
    const/16 v10, 0xd

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 105
    .local v8, "second":I
    const/4 v7, 0x1

    .line 106
    .local v7, "scaled":Z
    int-to-float v10, v2

    const/high16 v11, 0x41f00000    # 30.0f

    mul-float/2addr v10, v11

    int-to-float v11, v4

    const/high16 v12, 0x42700000    # 60.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x41f00000    # 30.0f

    mul-float/2addr v11, v12

    add-float v3, v10, v11

    .line 107
    .local v3, "hourRotate":F
    int-to-float v10, v4

    const/high16 v11, 0x40c00000    # 6.0f

    mul-float v5, v10, v11

    .line 108
    .local v5, "minuteRotate":F
    int-to-float v10, v8

    const/high16 v11, 0x40c00000    # 6.0f

    mul-float v9, v10, v11

    .line 110
    .local v9, "secondRotate":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/fyt/widget/MyAnalogView;->availableWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fyt/widget/MyAnalogView;->mWidth:I

    if-lt v10, v11, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/fyt/widget/MyAnalogView;->availableHeight:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fyt/widget/MyAnalogView;->mHeight:I

    if-ge v10, v11, :cond_1

    .line 111
    :cond_0
    const/4 v7, 0x1

    .line 112
    move-object/from16 v0, p0

    iget v10, v0, Lcom/fyt/widget/MyAnalogView;->availableWidth:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fyt/widget/MyAnalogView;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 113
    move-object/from16 v0, p0

    iget v11, v0, Lcom/fyt/widget/MyAnalogView;->availableHeight:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/fyt/widget/MyAnalogView;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 112
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 114
    .local v6, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    move-object/from16 v0, p0

    iget v10, v0, Lcom/fyt/widget/MyAnalogView;->centerX:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fyt/widget/MyAnalogView;->centerY:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v6, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 118
    .end local v6    # "scale":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fyt/widget/MyAnalogView;->bmdBg:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fyt/widget/MyAnalogView;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/fyt/widget/MyAnalogView;->mWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/fyt/widget/MyAnalogView;->centerY:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/fyt/widget/MyAnalogView;->mHeight:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    .line 119
    move-object/from16 v0, p0

    iget v13, v0, Lcom/fyt/widget/MyAnalogView;->centerX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fyt/widget/MyAnalogView;->mWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fyt/widget/MyAnalogView;->centerY:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fyt/widget/MyAnalogView;->mHeight:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 118
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 120
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fyt/widget/MyAnalogView;->bmdBg:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fyt/widget/MyAnalogView;->bmdMinute:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/fyt/widget/MyAnalogView;->mTempWidth:I

    .line 126
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fyt/widget/MyAnalogView;->bmdMinute:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/fyt/widget/MyAnalogView;->mTempHeight:I

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 128
    move-object/from16 v0, p0

    iget v10, v0, Lcom/fyt/widget/MyAnalogView;->centerX:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fyt/widget/MyAnalogView;->centerY:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 129
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fyt/widget/MyAnalogView;->bmdMinute:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fyt/widget/MyAnalogView;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/fyt/widget/MyAnalogView;->mTempWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/fyt/widget/MyAnalogView;->centerY:I

    .line 130
    move-object/from16 v0, p0

    iget v13, v0, Lcom/fyt/widget/MyAnalogView;->mTempHeight:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/fyt/widget/MyAnalogView;->centerX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fyt/widget/MyAnalogView;->mTempWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fyt/widget/MyAnalogView;->centerY:I

    .line 131
    move-object/from16 v0, p0

    iget v15, v0, Lcom/fyt/widget/MyAnalogView;->mTempHeight:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 129
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 132
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fyt/widget/MyAnalogView;->bmdMinute:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 135
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fyt/widget/MyAnalogView;->bmdHour:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/fyt/widget/MyAnalogView;->mTempWidth:I

    .line 136
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fyt/widget/MyAnalogView;->bmdHour:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/fyt/widget/MyAnalogView;->mTempHeight:I

    .line 137
    move-object/from16 v0, p0

    iget v10, v0, Lcom/fyt/widget/MyAnalogView;->centerX:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fyt/widget/MyAnalogView;->centerY:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 138
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fyt/widget/MyAnalogView;->bmdHour:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fyt/widget/MyAnalogView;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/fyt/widget/MyAnalogView;->mTempWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/fyt/widget/MyAnalogView;->centerY:I

    .line 139
    move-object/from16 v0, p0

    iget v13, v0, Lcom/fyt/widget/MyAnalogView;->mTempHeight:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/fyt/widget/MyAnalogView;->centerX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fyt/widget/MyAnalogView;->mTempWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fyt/widget/MyAnalogView;->centerY:I

    .line 140
    move-object/from16 v0, p0

    iget v15, v0, Lcom/fyt/widget/MyAnalogView;->mTempHeight:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 138
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 141
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fyt/widget/MyAnalogView;->bmdHour:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 144
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fyt/widget/MyAnalogView;->bmdSecond:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/fyt/widget/MyAnalogView;->mTempWidth:I

    .line 145
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fyt/widget/MyAnalogView;->bmdSecond:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/fyt/widget/MyAnalogView;->mTempHeight:I

    .line 146
    move-object/from16 v0, p0

    iget v10, v0, Lcom/fyt/widget/MyAnalogView;->centerX:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fyt/widget/MyAnalogView;->centerY:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 147
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fyt/widget/MyAnalogView;->bmdSecond:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fyt/widget/MyAnalogView;->centerX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/fyt/widget/MyAnalogView;->mTempWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/fyt/widget/MyAnalogView;->centerY:I

    .line 148
    move-object/from16 v0, p0

    iget v13, v0, Lcom/fyt/widget/MyAnalogView;->mTempHeight:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/fyt/widget/MyAnalogView;->centerX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fyt/widget/MyAnalogView;->mTempWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fyt/widget/MyAnalogView;->centerY:I

    .line 149
    move-object/from16 v0, p0

    iget v15, v0, Lcom/fyt/widget/MyAnalogView;->mTempHeight:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 147
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 150
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fyt/widget/MyAnalogView;->bmdSecond:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 153
    if-eqz v7, :cond_2

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 156
    :cond_2
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fyt/widget/MyAnalogView;->tickHandler:Landroid/os/Handler;

    .line 86
    iget-object v0, p0, Lcom/fyt/widget/MyAnalogView;->tickHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fyt/widget/MyAnalogView;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method
