.class public Lcom/fyt/widget/TurntableView;
.super Landroid/view/View;
.source "TurntableView.java"


# instance fields
.field public checked:Z

.field current:I

.field endAngle:F

.field mChanged:Z

.field mCurrAngle:F

.field mDial:Landroid/graphics/drawable/Drawable;

.field mDialHeight:I

.field mDialWidth:I

.field mDialbg:Landroid/graphics/Bitmap;

.field mDrawTime:J

.field max:I

.field min:I

.field pointer:Landroid/graphics/drawable/Drawable;

.field pointerbg:Landroid/graphics/Bitmap;

.field snap:F

.field startAngle:F

.field target:F

.field temp:I

.field update:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, -0x3d420000    # -95.0f

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    iput v1, p0, Lcom/fyt/widget/TurntableView;->min:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/fyt/widget/TurntableView;->max:I

    .line 25
    iput v1, p0, Lcom/fyt/widget/TurntableView;->current:I

    iput v1, p0, Lcom/fyt/widget/TurntableView;->temp:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/fyt/widget/TurntableView;->snap:F

    .line 27
    iput v2, p0, Lcom/fyt/widget/TurntableView;->startAngle:F

    const/high16 v0, 0x42c00000    # 96.0f

    iput v0, p0, Lcom/fyt/widget/TurntableView;->endAngle:F

    iput v2, p0, Lcom/fyt/widget/TurntableView;->mCurrAngle:F

    .line 40
    iput-boolean v1, p0, Lcom/fyt/widget/TurntableView;->checked:Z

    .line 42
    new-instance v0, Lcom/fyt/widget/TurntableView$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/TurntableView$1;-><init>(Lcom/fyt/widget/TurntableView;)V

    iput-object v0, p0, Lcom/fyt/widget/TurntableView;->update:Ljava/lang/Runnable;

    .line 78
    invoke-direct {p0, p1}, Lcom/fyt/widget/TurntableView;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, -0x3d420000    # -95.0f

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v1, p0, Lcom/fyt/widget/TurntableView;->min:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/fyt/widget/TurntableView;->max:I

    .line 25
    iput v1, p0, Lcom/fyt/widget/TurntableView;->current:I

    iput v1, p0, Lcom/fyt/widget/TurntableView;->temp:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/fyt/widget/TurntableView;->snap:F

    .line 27
    iput v2, p0, Lcom/fyt/widget/TurntableView;->startAngle:F

    const/high16 v0, 0x42c00000    # 96.0f

    iput v0, p0, Lcom/fyt/widget/TurntableView;->endAngle:F

    iput v2, p0, Lcom/fyt/widget/TurntableView;->mCurrAngle:F

    .line 40
    iput-boolean v1, p0, Lcom/fyt/widget/TurntableView;->checked:Z

    .line 42
    new-instance v0, Lcom/fyt/widget/TurntableView$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/TurntableView$1;-><init>(Lcom/fyt/widget/TurntableView;)V

    iput-object v0, p0, Lcom/fyt/widget/TurntableView;->update:Ljava/lang/Runnable;

    .line 73
    invoke-direct {p0, p1}, Lcom/fyt/widget/TurntableView;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;
    .param p3, "arg2"    # I

    .prologue
    const/high16 v2, -0x3d420000    # -95.0f

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput v1, p0, Lcom/fyt/widget/TurntableView;->min:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/fyt/widget/TurntableView;->max:I

    .line 25
    iput v1, p0, Lcom/fyt/widget/TurntableView;->current:I

    iput v1, p0, Lcom/fyt/widget/TurntableView;->temp:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/fyt/widget/TurntableView;->snap:F

    .line 27
    iput v2, p0, Lcom/fyt/widget/TurntableView;->startAngle:F

    const/high16 v0, 0x42c00000    # 96.0f

    iput v0, p0, Lcom/fyt/widget/TurntableView;->endAngle:F

    iput v2, p0, Lcom/fyt/widget/TurntableView;->mCurrAngle:F

    .line 40
    iput-boolean v1, p0, Lcom/fyt/widget/TurntableView;->checked:Z

    .line 42
    new-instance v0, Lcom/fyt/widget/TurntableView$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/TurntableView$1;-><init>(Lcom/fyt/widget/TurntableView;)V

    iput-object v0, p0, Lcom/fyt/widget/TurntableView;->update:Ljava/lang/Runnable;

    .line 68
    invoke-direct {p0, p1}, Lcom/fyt/widget/TurntableView;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/fyt/widget/TurntableView;F)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/fyt/widget/TurntableView;->setTarget(F)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/fyt/widget/TurntableView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    const v1, 0x7f020666

    .line 82
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fyt/widget/TurntableView;->mDialbg:Landroid/graphics/Bitmap;

    .line 85
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/fyt/widget/TurntableView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/fyt/widget/TurntableView;->mDialbg:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/fyt/widget/TurntableView;->mDial:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {p0}, Lcom/fyt/widget/TurntableView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    const v1, 0x7f02066e

    .line 86
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fyt/widget/TurntableView;->pointerbg:Landroid/graphics/Bitmap;

    .line 89
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/fyt/widget/TurntableView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/fyt/widget/TurntableView;->pointerbg:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/fyt/widget/TurntableView;->pointer:Landroid/graphics/drawable/Drawable;

    .line 90
    const/4 v0, 0x0

    const/16 v1, 0x5dc0

    invoke-virtual {p0, v0, v1}, Lcom/fyt/widget/TurntableView;->setRange(II)V

    .line 91
    const/16 v0, -0x78

    const/16 v1, 0x78

    invoke-virtual {p0, v0, v1}, Lcom/fyt/widget/TurntableView;->setAngleRange(II)V

    .line 92
    return-void
.end method

.method private setTarget(F)V
    .locals 4
    .param p1, "target"    # F

    .prologue
    .line 226
    iget v0, p0, Lcom/fyt/widget/TurntableView;->startAngle:F

    iget v1, p0, Lcom/fyt/widget/TurntableView;->endAngle:F

    iget v2, p0, Lcom/fyt/widget/TurntableView;->startAngle:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/fyt/widget/TurntableView;->max:I

    iget v3, p0, Lcom/fyt/widget/TurntableView;->min:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/fyt/widget/TurntableView;->min:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/fyt/widget/TurntableView;->target:F

    .line 228
    invoke-virtual {p0}, Lcom/fyt/widget/TurntableView;->invalidate()V

    .line 229
    return-void
.end method


# virtual methods
.method checkedWithAnim(I)V
    .locals 2
    .param p1, "target"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/fyt/widget/TurntableView;->temp:I

    .line 208
    iget v0, p0, Lcom/fyt/widget/TurntableView;->temp:I

    iget v1, p0, Lcom/fyt/widget/TurntableView;->current:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fyt/widget/TurntableView;->snap:F

    .line 209
    iget-object v0, p0, Lcom/fyt/widget/TurntableView;->update:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/fyt/widget/TurntableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 210
    iget-object v0, p0, Lcom/fyt/widget/TurntableView;->update:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/fyt/widget/TurntableView;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method getSectorClip(FFFFF)Landroid/graphics/Path;
    .locals 14
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "r"    # F
    .param p4, "startAngle"    # F
    .param p5, "endAngle"    # F

    .prologue
    .line 270
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 272
    .local v2, "path":Landroid/graphics/Path;
    move/from16 v0, p2

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 273
    float-to-double v4, p1

    move/from16 v0, p3

    float-to-double v6, v0

    move/from16 v0, p4

    float-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 274
    move/from16 v0, p2

    float-to-double v6, v0

    move/from16 v0, p3

    float-to-double v8, v0

    move/from16 v0, p4

    float-to-double v10, v0

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    .line 273
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 275
    float-to-double v4, p1

    move/from16 v0, p3

    float-to-double v6, v0

    move/from16 v0, p5

    float-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 276
    move/from16 v0, p2

    float-to-double v6, v0

    move/from16 v0, p3

    float-to-double v8, v0

    move/from16 v0, p5

    float-to-double v10, v0

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    .line 275
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 277
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 279
    new-instance v3, Landroid/graphics/RectF;

    sub-float v4, p1, p3

    sub-float v5, p2, p3

    add-float v6, p1, p3

    add-float v7, p2, p3

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 281
    .local v3, "rectF":Landroid/graphics/RectF;
    sub-float v4, p5, p4

    move/from16 v0, p4

    invoke-virtual {v2, v3, v0, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 282
    return-object v2
.end method

.method public getTarget()F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/fyt/widget/TurntableView;->target:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 252
    iget-boolean v0, p0, Lcom/fyt/widget/TurntableView;->checked:Z

    if-eqz v0, :cond_0

    .line 253
    iget v0, p0, Lcom/fyt/widget/TurntableView;->max:I

    invoke-virtual {p0, v0}, Lcom/fyt/widget/TurntableView;->checkedWithAnim(I)V

    .line 255
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 127
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/fyt/widget/TurntableView;->mChanged:Z

    .line 129
    .local v8, "changed":Z
    if-eqz v8, :cond_0

    .line 130
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fyt/widget/TurntableView;->mChanged:Z

    .line 133
    :cond_0
    const/4 v14, 0x0

    .line 134
    .local v14, "inva":Z
    invoke-virtual/range {p0 .. p0}, Lcom/fyt/widget/TurntableView;->getDrawingTime()J

    move-result-wide v10

    .line 135
    .local v10, "currDrawTime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->mCurrAngle:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->target:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-eqz v23, :cond_2

    .line 136
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fyt/widget/TurntableView;->mDrawTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-nez v23, :cond_1

    .line 137
    const-wide/16 v24, 0x11

    sub-long v24, v10, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/fyt/widget/TurntableView;->mDrawTime:J

    .line 139
    :cond_1
    const/4 v14, 0x1

    .line 144
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fyt/widget/TurntableView;->mDrawTime:J

    move-wide/from16 v24, v0

    sub-long v24, v10, v24

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->endAngle:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->startAngle:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    mul-float v24, v24, v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fyt/widget/TurntableView;->checked:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    const/high16 v23, 0x45fa0000    # 8000.0f

    :goto_0
    div-float v12, v24, v23

    .line 147
    .local v12, "dx":F
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/fyt/widget/TurntableView;->mDrawTime:J

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->startAngle:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->target:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->endAngle:F

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v24

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fyt/widget/TurntableView;->target:F

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->mCurrAngle:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->target:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v24

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_8

    .line 150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->target:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fyt/widget/TurntableView;->mCurrAngle:F

    .line 151
    const/4 v14, 0x0

    .line 156
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fyt/widget/TurntableView;->getRight()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/fyt/widget/TurntableView;->getLeft()I

    move-result v24

    sub-int v7, v23, v24

    .line 157
    .local v7, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/fyt/widget/TurntableView;->getBottom()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/fyt/widget/TurntableView;->getTop()I

    move-result v24

    sub-int v6, v23, v24

    .line 158
    .local v6, "availableHeight":I
    div-int/lit8 v21, v7, 0x2

    .line 159
    .local v21, "x":I
    div-int/lit8 v22, v6, 0x2

    .line 161
    .local v22, "y":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fyt/widget/TurntableView;->mDial:Landroid/graphics/drawable/Drawable;

    .line 162
    .local v9, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    .line 163
    .local v20, "w":I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 165
    .local v13, "h":I
    const/16 v19, 0x0

    .line 166
    .local v19, "scaled":Z
    move/from16 v0, v20

    if-lt v7, v0, :cond_3

    if-ge v6, v13, :cond_4

    .line 167
    :cond_3
    const/16 v19, 0x1

    .line 168
    int-to-float v0, v7

    move/from16 v23, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    .line 169
    int-to-float v0, v6

    move/from16 v24, v0

    int-to-float v0, v13

    move/from16 v25, v0

    div-float v24, v24, v25

    .line 168
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 170
    .local v18, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 171
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 174
    .end local v18    # "scale":F
    :cond_4
    if-eqz v8, :cond_5

    .line 175
    div-int/lit8 v23, v20, 0x2

    sub-int v23, v21, v23

    div-int/lit8 v24, v13, 0x2

    sub-int v24, v22, v24

    div-int/lit8 v25, v20, 0x2

    add-int v25, v25, v21

    div-int/lit8 v26, v13, 0x2

    add-int v26, v26, v22

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 177
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyt/widget/TurntableView;->pointer:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    .line 182
    .local v17, "pointer":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 183
    .local v16, "pWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 185
    .local v15, "pHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->mCurrAngle:F

    move/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 186
    div-int/lit8 v23, v16, 0x2

    sub-int v23, v21, v23

    div-int/lit8 v24, v15, 0x2

    sub-int v24, v22, v24

    div-int/lit8 v25, v16, 0x2

    add-int v25, v25, v21

    div-int/lit8 v26, v15, 0x2

    add-int v26, v26, v22

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 190
    if-eqz v19, :cond_6

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 194
    :cond_6
    if-eqz v14, :cond_9

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/fyt/widget/TurntableView;->invalidate()V

    .line 199
    :goto_2
    return-void

    .line 144
    .end local v6    # "availableHeight":I
    .end local v7    # "availableWidth":I
    .end local v9    # "dial":Landroid/graphics/drawable/Drawable;
    .end local v12    # "dx":F
    .end local v13    # "h":I
    .end local v15    # "pHeight":I
    .end local v16    # "pWidth":I
    .end local v17    # "pointer":Landroid/graphics/drawable/Drawable;
    .end local v19    # "scaled":Z
    .end local v20    # "w":I
    .end local v21    # "x":I
    .end local v22    # "y":I
    :cond_7
    const/high16 v23, 0x447a0000    # 1000.0f

    goto/16 :goto_0

    .line 153
    .restart local v12    # "dx":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->mCurrAngle:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->mCurrAngle:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->target:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->target:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyt/widget/TurntableView;->mCurrAngle:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    div-float v24, v24, v25

    mul-float v24, v24, v12

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fyt/widget/TurntableView;->mCurrAngle:F

    goto/16 :goto_1

    .line 197
    .restart local v6    # "availableHeight":I
    .restart local v7    # "availableWidth":I
    .restart local v9    # "dial":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "h":I
    .restart local v15    # "pHeight":I
    .restart local v16    # "pWidth":I
    .restart local v17    # "pointer":Landroid/graphics/drawable/Drawable;
    .restart local v19    # "scaled":Z
    .restart local v20    # "w":I
    .restart local v21    # "x":I
    .restart local v22    # "y":I
    :cond_9
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/fyt/widget/TurntableView;->mDrawTime:J

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 103
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 104
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 105
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 107
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 108
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 110
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/fyt/widget/TurntableView;->mDialWidth:I

    if-ge v6, v7, :cond_0

    .line 111
    int-to-float v7, v6

    iget v8, p0, Lcom/fyt/widget/TurntableView;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 114
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/fyt/widget/TurntableView;->mDialHeight:I

    if-ge v2, v7, :cond_1

    .line 115
    int-to-float v7, v2

    iget v8, p0, Lcom/fyt/widget/TurntableView;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 118
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 120
    .local v3, "scale":F
    iget v7, p0, Lcom/fyt/widget/TurntableView;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/fyt/widget/TurntableView;->resolveSizeAndState(III)I

    move-result v7

    .line 121
    iget v8, p0, Lcom/fyt/widget/TurntableView;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/fyt/widget/TurntableView;->resolveSizeAndState(III)I

    move-result v8

    .line 120
    invoke-virtual {p0, v7, v8}, Lcom/fyt/widget/TurntableView;->setMeasuredDimension(II)V

    .line 122
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyt/widget/TurntableView;->mChanged:Z

    .line 98
    return-void
.end method

.method public setAngleRange(II)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 244
    int-to-float v0, p1

    iput v0, p0, Lcom/fyt/widget/TurntableView;->startAngle:F

    .line 245
    int-to-float v0, p2

    iput v0, p0, Lcom/fyt/widget/TurntableView;->endAngle:F

    .line 246
    iget v0, p0, Lcom/fyt/widget/TurntableView;->endAngle:F

    iput v0, p0, Lcom/fyt/widget/TurntableView;->target:F

    .line 247
    return-void
.end method

.method public setRange(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/fyt/widget/TurntableView;->min:I

    .line 240
    iput p2, p0, Lcom/fyt/widget/TurntableView;->max:I

    .line 241
    return-void
.end method

.method public setTargetWithAnim(I)V
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/fyt/widget/TurntableView;->checked:Z

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/fyt/widget/TurntableView;->setTarget(F)V

    goto :goto_0
.end method
