.class public Lcom/android/launcher4/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field private static final EXTRA_THICK:I = 0x2

.field static INSTANCE:Lcom/android/launcher4/HolographicOutlineHelper; = null

.field private static final MEDIUM:I = 0x1

.field private static final THICK:I


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private mExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mHolographicPaint:Landroid/graphics/Paint;

.field public mMaxOuterBlurRadius:I

.field private mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field public mMinOuterBlurRadius:I

.field private mThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 50
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherAppState;->getScreenDensity()F

    move-result v0

    .line 52
    .local v0, "scale":F
    mul-float v1, v0, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mMinOuterBlurRadius:I

    .line 53
    mul-float v1, v0, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mMaxOuterBlurRadius:I

    .line 55
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 56
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v7

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 57
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 58
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 59
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v7

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 60
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 61
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 63
    iget-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 64
    iget-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 66
    iget-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 68
    iget-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 69
    iget-object v1, p0, Lcom/android/launcher4/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    return-void
.end method

.method public static highlightAlphaInterpolator(F)F
    .locals 6
    .param p0, "r"    # F

    .prologue
    .line 84
    const v0, 0x3f19999a    # 0.6f

    .line 85
    .local v0, "maxAlpha":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    mul-float/2addr v1, v0

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    return v1
.end method

.method public static obtain(Landroid/content/Context;)Lcom/android/launcher4/HolographicOutlineHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/android/launcher4/HolographicOutlineHelper;->INSTANCE:Lcom/android/launcher4/HolographicOutlineHelper;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/launcher4/HolographicOutlineHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher4/HolographicOutlineHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher4/HolographicOutlineHelper;->INSTANCE:Lcom/android/launcher4/HolographicOutlineHelper;

    .line 76
    :cond_0
    sget-object v0, Lcom/android/launcher4/HolographicOutlineHelper;->INSTANCE:Lcom/android/launcher4/HolographicOutlineHelper;

    return-object v0
.end method

.method public static viewAlphaInterpolator(F)F
    .locals 6
    .param p0, "r"    # F

    .prologue
    const v2, 0x3f733333    # 0.95f

    .line 92
    const v0, 0x3f733333    # 0.95f

    .line 93
    .local v0, "pivot":F
    cmpg-float v1, p0, v2

    if-gez v1, :cond_0

    .line 94
    div-float v1, p0, v2

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 96
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V
    .locals 7
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I
    .param p5, "thickness"    # I

    .prologue
    .line 106
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher4/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZI)V

    .line 108
    return-void
.end method

.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZI)V
    .locals 21
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I
    .param p5, "clipAlpha"    # Z
    .param p6, "thickness"    # I

    .prologue
    .line 114
    if-eqz p5, :cond_0

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 117
    .local v3, "srcBuffer":[I
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v2, p1

    .line 116
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 118
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v2, v3

    if-lt v14, v2, :cond_1

    .line 125
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v2, p1

    .line 124
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 127
    .end local v3    # "srcBuffer":[I
    .end local v14    # "i":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 131
    .local v13, "glowShape":Landroid/graphics/Bitmap;
    packed-switch p6, :pswitch_data_0

    .line 142
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Invalid blur thickness"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    .end local v13    # "glowShape":Landroid/graphics/Bitmap;
    .restart local v3    # "srcBuffer":[I
    .restart local v14    # "i":I
    :cond_1
    aget v2, v3, v14

    ushr-int/lit8 v10, v2, 0x18

    .line 120
    .local v10, "alpha":I
    const/16 v2, 0xbc

    if-ge v10, v2, :cond_2

    .line 121
    const/4 v2, 0x0

    aput v2, v3, v14

    .line 118
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 133
    .end local v3    # "srcBuffer":[I
    .end local v10    # "alpha":I
    .end local v14    # "i":I
    .restart local v13    # "glowShape":Landroid/graphics/Bitmap;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    move-object/from16 v16, v0

    .line 144
    .local v16, "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 145
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 146
    .local v17, "outerBlurOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    invoke-virtual {v13, v2, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 147
    .local v20, "thickOuterBlur":Landroid/graphics/Bitmap;
    const/4 v2, 0x2

    move/from16 v0, p6

    if-ne v0, v2, :cond_3

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 153
    :goto_2
    const/4 v2, 0x2

    new-array v12, v2, [I

    .line 154
    .local v12, "brightOutlineOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v2, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 157
    .local v11, "brightOutline":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    const/high16 v2, -0x1000000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 160
    packed-switch p6, :pswitch_data_1

    .line 171
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Invalid blur thickness"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    .end local v11    # "brightOutline":Landroid/graphics/Bitmap;
    .end local v12    # "brightOutlineOffset":[I
    .end local v16    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    .end local v17    # "outerBlurOffset":[I
    .end local v20    # "thickOuterBlur":Landroid/graphics/Bitmap;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    move-object/from16 v16, v0

    .line 137
    .restart local v16    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto :goto_1

    .line 139
    .end local v16    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    move-object/from16 v16, v0

    .line 140
    .restart local v16    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto :goto_1

    .line 150
    .restart local v17    # "outerBlurOffset":[I
    .restart local v20    # "thickOuterBlur":Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_2

    .line 162
    .restart local v11    # "brightOutline":Landroid/graphics/Bitmap;
    .restart local v12    # "brightOutlineOffset":[I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 173
    .local v15, "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 174
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 175
    .local v19, "thickInnerBlurOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    invoke-virtual {v13, v2, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 178
    .local v18, "thickInnerBlur":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    const/4 v2, 0x0

    aget v2, v19, v2

    neg-int v2, v2

    int-to-float v2, v2

    .line 180
    const/4 v4, 0x1

    aget v4, v19, v4

    neg-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 179
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 181
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    aget v2, v19, v2

    neg-int v2, v2

    int-to-float v7, v2

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v8, v2

    .line 182
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    .line 181
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 183
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v7, v2

    const/4 v2, 0x1

    aget v2, v19, v2

    neg-int v2, v2

    int-to-float v8, v2

    .line 184
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    .line 183
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 187
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    const/4 v2, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    const/4 v2, 0x0

    aget v2, v19, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v19, v4

    int-to-float v4, v4

    .line 191
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 190
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    const/4 v2, 0x0

    aget v2, v17, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v17, v4

    int-to-float v4, v4

    .line 193
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 192
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    const/4 v2, 0x0

    aget v2, v12, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v12, v4

    int-to-float v4, v4

    .line 198
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 197
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 205
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    return-void

    .line 165
    .end local v15    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    .end local v18    # "thickInnerBlur":Landroid/graphics/Bitmap;
    .end local v19    # "thickInnerBlurOffset":[I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 166
    .restart local v15    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto/16 :goto_3

    .line 168
    .end local v15    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher4/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 169
    .restart local v15    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto/16 :goto_3

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 160
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method applyExtraThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I

    .prologue
    .line 210
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 211
    return-void
.end method

.method applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I

    .prologue
    .line 226
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 227
    return-void
.end method

.method applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V
    .locals 7
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I
    .param p5, "clipAlpha"    # Z

    .prologue
    .line 220
    .line 221
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 220
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher4/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZI)V

    .line 222
    return-void
.end method

.method applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I

    .prologue
    .line 215
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 216
    return-void
.end method
