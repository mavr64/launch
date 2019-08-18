.class public Lcom/syu/back/TrackView;
.super Landroid/view/View;
.source "TrackView.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$syu$back$TrackUtils$TRACK_TYPE:[I = null

.field static final DEFAULT_FLAGS:I = 0x5

.field static final MAX_DISTANCE:I = 0xbb8

.field static POINT_COUNT:I


# instance fields
.field angle:F

.field mHeight:I

.field mWidth:I

.field paint:Landroid/graphics/Paint;

.field sPaint:Landroid/graphics/Paint;

.field type:Lcom/syu/back/TrackUtils$TRACK_TYPE;

.field utils:Lcom/syu/back/TrackUtils;


# direct methods
.method static synthetic $SWITCH_TABLE$com$syu$back$TrackUtils$TRACK_TYPE()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/syu/back/TrackView;->$SWITCH_TABLE$com$syu$back$TrackUtils$TRACK_TYPE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/syu/back/TrackUtils$TRACK_TYPE;->values()[Lcom/syu/back/TrackUtils$TRACK_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/syu/back/TrackUtils$TRACK_TYPE;->BENZ:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    invoke-virtual {v1}, Lcom/syu/back/TrackUtils$TRACK_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/syu/back/TrackUtils$TRACK_TYPE;->RECT:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    invoke-virtual {v1}, Lcom/syu/back/TrackUtils$TRACK_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/syu/back/TrackUtils$TRACK_TYPE;->RECT_DASH:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    invoke-virtual {v1}, Lcom/syu/back/TrackUtils$TRACK_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/syu/back/TrackView;->$SWITCH_TABLE$com$syu$back$TrackUtils$TRACK_TYPE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    const/16 v0, 0x14

    sput v0, Lcom/syu/back/TrackView;->POINT_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/high16 v0, 0x420c0000    # 35.0f

    iput v0, p0, Lcom/syu/back/TrackView;->angle:F

    .line 33
    sget-object v0, Lcom/syu/back/TrackUtils$TRACK_TYPE;->BENZ:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    iput-object v0, p0, Lcom/syu/back/TrackView;->type:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/high16 v0, 0x420c0000    # 35.0f

    iput v0, p0, Lcom/syu/back/TrackView;->angle:F

    .line 33
    sget-object v0, Lcom/syu/back/TrackUtils$TRACK_TYPE;->BENZ:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    iput-object v0, p0, Lcom/syu/back/TrackView;->type:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/high16 v0, 0x420c0000    # 35.0f

    iput v0, p0, Lcom/syu/back/TrackView;->angle:F

    .line 33
    sget-object v0, Lcom/syu/back/TrackUtils$TRACK_TYPE;->BENZ:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    iput-object v0, p0, Lcom/syu/back/TrackView;->type:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    .line 37
    return-void
.end method


# virtual methods
.method public drawArc(Landroid/graphics/Canvas;[Lcom/syu/back/TrackUtils$Crcle;FZZ)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cs"    # [Lcom/syu/back/TrackUtils$Crcle;
    .param p3, "ang"    # F
    .param p4, "close"    # Z
    .param p5, "outer"    # Z

    .prologue
    .line 186
    const/4 v6, 0x0

    .line 187
    .local v6, "dst":[F
    const/4 v7, 0x0

    .line 188
    .local v7, "dst1":[F
    const/4 v0, 0x0

    aget-object v1, p2, v0

    iget v0, p0, Lcom/syu/back/TrackView;->angle:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/syu/back/TrackView;->getPointsOfArc(Lcom/syu/back/TrackUtils$Crcle;Z)[F

    move-result-object v6

    .line 189
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v6, p1, v0, v1}, Lcom/syu/back/TrackView;->drawLine([FLandroid/graphics/Canvas;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 191
    const/4 v0, 0x1

    aget-object v1, p2, v0

    iget v0, p0, Lcom/syu/back/TrackView;->angle:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/syu/back/TrackView;->getPointsOfArc(Lcom/syu/back/TrackUtils$Crcle;Z)[F

    move-result-object v7

    .line 192
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v7, p1, v0, v1}, Lcom/syu/back/TrackView;->drawLine([FLandroid/graphics/Canvas;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 194
    if-eqz p4, :cond_0

    .line 195
    const/4 v0, 0x4

    new-array v13, v0, [F

    const/4 v0, 0x0

    array-length v1, v6

    add-int/lit8 v1, v1, -0x2

    aget v1, v6, v1

    aput v1, v13, v0

    const/4 v0, 0x1

    array-length v1, v6

    add-int/lit8 v1, v1, -0x1

    aget v1, v6, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    aput v1, v13, v0

    const/4 v0, 0x2

    array-length v1, v7

    add-int/lit8 v1, v1, -0x2

    aget v1, v7, v1

    aput v1, v13, v0

    const/4 v0, 0x3

    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    aget v1, v7, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    aput v1, v13, v0

    .line 196
    .local v13, "ps3":[F
    array-length v0, v6

    add-int/lit8 v0, v0, -0x2

    aget v0, v6, v0

    array-length v1, v6

    add-int/lit8 v1, v1, -0x2

    aget v1, v7, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    array-length v1, v6

    add-int/lit8 v1, v1, -0x1

    aget v1, v6, v1

    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    aget v2, v6, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 197
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v13, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 199
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    const/4 v0, 0x4

    new-array v13, v0, [F

    .end local v13    # "ps3":[F
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v6, v1

    aput v1, v13, v0

    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, v6, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    aput v1, v13, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aget v1, v7, v1

    aput v1, v13, v0

    const/4 v0, 0x3

    const/4 v1, 0x1

    aget v1, v7, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    aput v1, v13, v0

    .line 201
    .restart local v13    # "ps3":[F
    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x0

    aget v1, v7, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x1

    aget v1, v6, v1

    const/4 v2, 0x1

    aget v2, v6, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 202
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v13, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 203
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    .end local v13    # "ps3":[F
    :cond_0
    if-nez p5, :cond_1

    .line 210
    new-instance v1, Lcom/syu/back/TrackUtils$Crcle;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    iget v0, v0, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    const/4 v2, 0x0

    aget-object v2, p2, v2

    iget v2, v2, Lcom/syu/back/TrackUtils$Crcle;->cy:F

    const/4 v3, 0x0

    aget-object v3, p2, v3

    iget v3, v3, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    add-int/lit8 v3, v3, 0x64

    invoke-direct {v1, v0, v2, v3}, Lcom/syu/back/TrackUtils$Crcle;-><init>(FFI)V

    iget v0, p0, Lcom/syu/back/TrackView;->angle:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/syu/back/TrackView;->getPointsOfArc(Lcom/syu/back/TrackUtils$Crcle;Z)[F

    move-result-object v9

    .line 211
    .local v9, "inter":[F
    new-instance v1, Lcom/syu/back/TrackUtils$Crcle;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    iget v0, v0, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    const/4 v2, 0x0

    aget-object v2, p2, v2

    iget v2, v2, Lcom/syu/back/TrackUtils$Crcle;->cy:F

    const/4 v3, 0x0

    aget-object v3, p2, v3

    iget v3, v3, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    add-int/lit16 v3, v3, 0x12c

    invoke-direct {v1, v0, v2, v3}, Lcom/syu/back/TrackUtils$Crcle;-><init>(FFI)V

    iget v0, p0, Lcom/syu/back/TrackView;->angle:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v1, v0}, Lcom/syu/back/TrackView;->getPointsOfArc(Lcom/syu/back/TrackUtils$Crcle;Z)[F

    move-result-object v10

    .line 212
    .local v10, "inter1":[F
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_4
    array-length v0, v9

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x2

    if-lt v8, v0, :cond_6

    .line 224
    new-instance v1, Lcom/syu/back/TrackUtils$Crcle;

    const/4 v0, 0x1

    aget-object v0, p2, v0

    iget v0, v0, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    const/4 v2, 0x1

    aget-object v2, p2, v2

    iget v2, v2, Lcom/syu/back/TrackUtils$Crcle;->cy:F

    const/4 v3, 0x1

    aget-object v3, p2, v3

    iget v3, v3, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    add-int/lit8 v3, v3, -0x64

    invoke-direct {v1, v0, v2, v3}, Lcom/syu/back/TrackUtils$Crcle;-><init>(FFI)V

    iget v0, p0, Lcom/syu/back/TrackView;->angle:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v1, v0}, Lcom/syu/back/TrackView;->getPointsOfArc(Lcom/syu/back/TrackUtils$Crcle;Z)[F

    move-result-object v11

    .line 225
    .local v11, "out":[F
    new-instance v1, Lcom/syu/back/TrackUtils$Crcle;

    const/4 v0, 0x1

    aget-object v0, p2, v0

    iget v0, v0, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    const/4 v2, 0x1

    aget-object v2, p2, v2

    iget v2, v2, Lcom/syu/back/TrackUtils$Crcle;->cy:F

    const/4 v3, 0x1

    aget-object v3, p2, v3

    iget v3, v3, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    add-int/lit16 v3, v3, -0x12c

    invoke-direct {v1, v0, v2, v3}, Lcom/syu/back/TrackUtils$Crcle;-><init>(FFI)V

    iget v0, p0, Lcom/syu/back/TrackView;->angle:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, v1, v0}, Lcom/syu/back/TrackView;->getPointsOfArc(Lcom/syu/back/TrackUtils$Crcle;Z)[F

    move-result-object v12

    .line 226
    .local v12, "out1":[F
    const/4 v8, 0x1

    :goto_7
    array-length v0, v11

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x2

    if-lt v8, v0, :cond_b

    .line 236
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 237
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    const/4 v0, 0x4

    new-array v13, v0, [F

    const/4 v0, 0x0

    const/16 v1, 0xa

    aget v1, v9, v1

    aput v1, v13, v0

    const/4 v0, 0x1

    const/16 v1, 0xb

    aget v1, v9, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    aput v1, v13, v0

    const/4 v0, 0x2

    const/16 v1, 0xa

    aget v1, v11, v1

    aput v1, v13, v0

    const/4 v0, 0x3

    const/16 v1, 0xb

    aget v1, v11, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    aput v1, v13, v0

    .line 239
    .restart local v13    # "ps3":[F
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v13, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 240
    const/16 v0, 0xa

    aget v0, v9, v0

    const/16 v1, 0xa

    aget v1, v11, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/16 v1, 0xb

    aget v1, v9, v1

    const/16 v2, 0xb

    aget v2, v11, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 242
    .end local v8    # "i":I
    .end local v9    # "inter":[F
    .end local v10    # "inter1":[F
    .end local v11    # "out":[F
    .end local v12    # "out1":[F
    .end local v13    # "ps3":[F
    :cond_1
    return-void

    .line 188
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 191
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 210
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 211
    .restart local v9    # "inter":[F
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 214
    .restart local v8    # "i":I
    .restart local v10    # "inter1":[F
    :cond_6
    const/4 v0, 0x6

    if-ge v8, v0, :cond_7

    .line 215
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    :goto_8
    mul-int/lit8 v0, v8, 0x2

    aget v1, v9, v0

    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v2, v9, v0

    mul-int/lit8 v0, v8, 0x2

    aget v3, v10, v0

    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v4, v10, v0

    iget-object v5, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 213
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 216
    :cond_7
    const/16 v0, 0xc

    if-gt v8, v0, :cond_8

    .line 217
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 219
    :cond_8
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 224
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 225
    .restart local v11    # "out":[F
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 227
    .restart local v12    # "out1":[F
    :cond_b
    const/4 v0, 0x6

    if-ge v8, v0, :cond_c

    .line 228
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    :goto_9
    mul-int/lit8 v0, v8, 0x2

    aget v1, v11, v0

    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v2, v11, v0

    mul-int/lit8 v0, v8, 0x2

    aget v3, v12, v0

    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v4, v12, v0

    iget-object v5, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 226
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    .line 229
    :cond_c
    const/16 v0, 0xc

    if-gt v8, v0, :cond_d

    .line 230
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    .line 232
    :cond_d
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9
.end method

.method drawContent(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 98
    iget-object v0, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    iget v1, p0, Lcom/syu/back/TrackView;->angle:F

    float-to-double v8, v1

    const-wide v10, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v8, v10

    double-to-float v1, v8

    invoke-virtual {v0, v1}, Lcom/syu/back/TrackUtils;->calculateCrcle(F)[Lcom/syu/back/TrackUtils$Crcle;

    move-result-object v2

    .line 99
    .local v2, "cs":[Lcom/syu/back/TrackUtils$Crcle;
    iget v3, p0, Lcom/syu/back/TrackView;->angle:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/syu/back/TrackView;->drawArc(Landroid/graphics/Canvas;[Lcom/syu/back/TrackUtils$Crcle;FZZ)V

    .line 101
    iget-object v0, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    const v1, 0x3f20d97c

    invoke-virtual {v0, v1}, Lcom/syu/back/TrackUtils;->calculateCrcle(F)[Lcom/syu/back/TrackUtils$Crcle;

    move-result-object v6

    .line 102
    .local v6, "crcles":[Lcom/syu/back/TrackUtils$Crcle;
    aget-object v0, v6, v5

    invoke-virtual {p0, v0, v4}, Lcom/syu/back/TrackView;->getPointsOfArc(Lcom/syu/back/TrackUtils$Crcle;Z)[F

    move-result-object v7

    .line 103
    .local v7, "dst":[F
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v7, p1, v12, v0}, Lcom/syu/back/TrackView;->drawLine([FLandroid/graphics/Canvas;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 105
    iget-object v0, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    const v1, -0x40e32bf4

    invoke-virtual {v0, v1}, Lcom/syu/back/TrackUtils;->calculateCrcle(F)[Lcom/syu/back/TrackUtils$Crcle;

    move-result-object v6

    .line 106
    aget-object v0, v6, v5

    invoke-virtual {p0, v0, v5}, Lcom/syu/back/TrackView;->getPointsOfArc(Lcom/syu/back/TrackUtils$Crcle;Z)[F

    move-result-object v7

    .line 107
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v7, p1, v12, v0}, Lcom/syu/back/TrackView;->drawLine([FLandroid/graphics/Canvas;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 108
    return-void
.end method

.method drawContentRect(Landroid/graphics/Canvas;Z)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dash"    # Z

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/syu/back/TrackView;->angle:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide v18, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v15, v0

    invoke-virtual {v14, v15}, Lcom/syu/back/TrackUtils;->calculateCrcle(F)[Lcom/syu/back/TrackUtils$Crcle;

    move-result-object v5

    .line 112
    .local v5, "cs":[Lcom/syu/back/TrackUtils$Crcle;
    const/4 v6, 0x0

    .line 113
    .local v6, "dst":[F
    const/4 v7, 0x0

    .line 114
    .local v7, "dst1":[F
    const/4 v14, 0x0

    aget-object v15, v5, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/syu/back/TrackView;->angle:F

    const/16 v16, 0x0

    cmpl-float v14, v14, v16

    if-lez v14, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/syu/back/TrackView;->getPointsOfArc(Lcom/syu/back/TrackUtils$Crcle;Z)[F

    move-result-object v6

    .line 115
    const/4 v14, 0x1

    aget-object v15, v5, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/syu/back/TrackView;->angle:F

    const/16 v16, 0x0

    cmpl-float v14, v14, v16

    if-lez v14, :cond_1

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/syu/back/TrackView;->getPointsOfArc(Lcom/syu/back/TrackUtils$Crcle;Z)[F

    move-result-object v7

    .line 117
    array-length v14, v6

    shr-int/lit8 v4, v14, 0x1

    .line 118
    .local v4, "count":I
    const/4 v10, 0x6

    .line 119
    .local v10, "num1":I
    mul-int/lit8 v8, v10, 0x2

    .line 121
    .local v8, "len":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    const/high16 v15, -0x10000

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    const/high16 v15, 0x40a00000    # 5.0f

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    const/4 v14, 0x4

    new-array v9, v14, [F

    const/4 v14, 0x0

    const/16 v15, 0xa

    aget v15, v6, v15

    aput v15, v9, v14

    const/4 v14, 0x1

    const/16 v15, 0xb

    aget v15, v6, v15

    aput v15, v9, v14

    const/4 v14, 0x2

    const/16 v15, 0xa

    aget v15, v7, v15

    aput v15, v9, v14

    const/4 v14, 0x3

    const/16 v15, 0xb

    aget v15, v7, v15

    aput v15, v9, v14

    .line 124
    .local v9, "lineps":[F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v14}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    const/high16 v15, 0x41000000    # 8.0f

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    new-array v13, v8, [F

    .line 128
    .local v13, "ps":[F
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v6, v14, v13, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v13, v1, v2}, Lcom/syu/back/TrackView;->drawLine([FZLandroid/graphics/Canvas;)V

    .line 130
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v7, v14, v13, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v13, v1, v2}, Lcom/syu/back/TrackView;->drawLine([FZLandroid/graphics/Canvas;)V

    .line 133
    const/4 v11, 0x7

    .line 134
    .local v11, "num2":I
    mul-int/lit8 v8, v11, 0x2

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    const/16 v15, -0x100

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    const/high16 v15, 0x40a00000    # 5.0f

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    const/4 v14, 0x4

    new-array v9, v14, [F

    .end local v9    # "lineps":[F
    const/4 v14, 0x0

    const/16 v15, 0x16

    aget v15, v6, v15

    aput v15, v9, v14

    const/4 v14, 0x1

    const/16 v15, 0x17

    aget v15, v6, v15

    aput v15, v9, v14

    const/4 v14, 0x2

    const/16 v15, 0x16

    aget v15, v7, v15

    aput v15, v9, v14

    const/4 v14, 0x3

    const/16 v15, 0x17

    aget v15, v7, v15

    aput v15, v9, v14

    .line 138
    .restart local v9    # "lineps":[F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v14}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    const/high16 v15, 0x41000000    # 8.0f

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    new-array v13, v8, [F

    .line 142
    const/16 v14, 0xa

    const/4 v15, 0x0

    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v6, v14, v13, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v13, v1, v2}, Lcom/syu/back/TrackView;->drawLine([FZLandroid/graphics/Canvas;)V

    .line 144
    const/16 v14, 0xa

    const/4 v15, 0x0

    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v7, v14, v13, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v13, v1, v2}, Lcom/syu/back/TrackView;->drawLine([FZLandroid/graphics/Canvas;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    const v15, -0xff0100

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    sub-int v14, v4, v10

    sub-int/2addr v14, v11

    add-int/lit8 v12, v14, 0x2

    .line 150
    .local v12, "num3":I
    mul-int/lit8 v8, v12, 0x2

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    const/high16 v15, 0x40a00000    # 5.0f

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    const/4 v14, 0x4

    new-array v9, v14, [F

    .end local v9    # "lineps":[F
    const/4 v14, 0x0

    add-int/lit8 v15, v4, -0x1

    mul-int/lit8 v15, v15, 0x2

    aget v15, v6, v15

    aput v15, v9, v14

    const/4 v14, 0x1

    add-int/lit8 v15, v4, -0x1

    mul-int/lit8 v15, v15, 0x2

    add-int/lit8 v15, v15, 0x1

    aget v15, v6, v15

    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v15, v15, v16

    aput v15, v9, v14

    const/4 v14, 0x2

    add-int/lit8 v15, v4, -0x1

    mul-int/lit8 v15, v15, 0x2

    aget v15, v7, v15

    aput v15, v9, v14

    const/4 v14, 0x3

    add-int/lit8 v15, v4, -0x1

    mul-int/lit8 v15, v15, 0x2

    add-int/lit8 v15, v15, 0x1

    aget v15, v7, v15

    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v15, v15, v16

    aput v15, v9, v14

    .line 153
    .restart local v9    # "lineps":[F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v14}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    const/high16 v15, 0x41000000    # 8.0f

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    new-array v13, v8, [F

    .line 157
    const/16 v14, 0x16

    const/4 v15, 0x0

    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v6, v14, v13, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v13, v1, v2}, Lcom/syu/back/TrackView;->drawLine([FZLandroid/graphics/Canvas;)V

    .line 159
    const/16 v14, 0x16

    const/4 v15, 0x0

    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v7, v14, v13, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v13, v1, v2}, Lcom/syu/back/TrackView;->drawLine([FZLandroid/graphics/Canvas;)V

    .line 161
    return-void

    .line 114
    .end local v4    # "count":I
    .end local v8    # "len":I
    .end local v9    # "lineps":[F
    .end local v10    # "num1":I
    .end local v11    # "num2":I
    .end local v12    # "num3":I
    .end local v13    # "ps":[F
    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 115
    :cond_1
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method drawDashArc(Landroid/graphics/Canvas;Lcom/syu/back/TrackUtils$Crcle;I)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "c"    # Lcom/syu/back/TrackUtils$Crcle;
    .param p3, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 318
    new-instance v3, Lcom/syu/back/TrackUtils$Crcle;

    iget v0, p2, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    iget v4, p2, Lcom/syu/back/TrackUtils$Crcle;->cy:F

    iget v5, p2, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    mul-int/lit8 v9, p3, 0x64

    add-int/2addr v5, v9

    invoke-direct {v3, v0, v4, v5}, Lcom/syu/back/TrackUtils$Crcle;-><init>(FFI)V

    iget v0, p0, Lcom/syu/back/TrackView;->angle:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/syu/back/TrackView;->getPointsOfArc(Lcom/syu/back/TrackUtils$Crcle;Z)[F

    move-result-object v6

    .line 319
    .local v6, "dst":[F
    new-instance v0, Lcom/syu/back/TrackUtils$Crcle;

    iget v3, p2, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    iget v4, p2, Lcom/syu/back/TrackUtils$Crcle;->cy:F

    iget v5, p2, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    mul-int/lit16 v9, p3, 0x12c

    add-int/2addr v5, v9

    invoke-direct {v0, v3, v4, v5}, Lcom/syu/back/TrackUtils$Crcle;-><init>(FFI)V

    iget v3, p0, Lcom/syu/back/TrackView;->angle:F

    cmpl-float v3, v3, v10

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/syu/back/TrackView;->getPointsOfArc(Lcom/syu/back/TrackUtils$Crcle;Z)[F

    move-result-object v7

    .line 320
    .local v7, "dst1":[F
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 321
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_2
    array-length v0, v6

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x2

    if-lt v8, v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 325
    return-void

    .end local v6    # "dst":[F
    .end local v7    # "dst1":[F
    .end local v8    # "i":I
    :cond_0
    move v0, v2

    .line 318
    goto :goto_0

    .restart local v6    # "dst":[F
    :cond_1
    move v1, v2

    .line 319
    goto :goto_1

    .line 322
    .restart local v7    # "dst1":[F
    .restart local v8    # "i":I
    :cond_2
    mul-int/lit8 v0, v8, 0x2

    aget v1, v6, v0

    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v2, v6, v0

    mul-int/lit8 v0, v8, 0x2

    aget v3, v7, v0

    mul-int/lit8 v0, v8, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v4, v7, v0

    iget-object v5, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 321
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method public drawLine([FLandroid/graphics/Canvas;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "points"    # [F
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "effect"    # Landroid/graphics/PathEffect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v4, 0x0

    .line 271
    if-nez p1, :cond_1

    move v0, v4

    .line 272
    .local v0, "count":I
    :goto_0
    if-gtz v0, :cond_2

    .line 296
    :cond_0
    :goto_1
    return-void

    .line 271
    .end local v0    # "count":I
    :cond_1
    array-length v5, p1

    shr-int/lit8 v0, v5, 0x1

    goto :goto_0

    .line 273
    .restart local v0    # "count":I
    :cond_2
    invoke-virtual {p4}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    .line 274
    .local v2, "lastStyle":Landroid/graphics/Paint$Style;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-eq v2, v5, :cond_3

    .line 275
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    :cond_3
    if-eqz p3, :cond_4

    .line 279
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 282
    :cond_4
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 283
    .local v3, "path":Landroid/graphics/Path;
    aget v4, p1, v4

    const/4 v5, 0x1

    aget v5, p1, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 284
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    if-lt v1, v0, :cond_6

    .line 287
    invoke-virtual {p2, v3, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 289
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-eq v2, v4, :cond_5

    .line 290
    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 293
    :cond_5
    if-eqz p3, :cond_0

    .line 294
    const/4 v4, 0x0

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_1

    .line 285
    :cond_6
    mul-int/lit8 v4, v1, 0x2

    aget v4, p1, v4

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, p1, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method drawLine([FZLandroid/graphics/Canvas;)V
    .locals 2
    .param p1, "ps"    # [F
    .param p2, "dash"    # Z
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 299
    if-eqz p2, :cond_0

    .line 300
    iget-object v0, p0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/syu/back/TrackView;->drawLine([FLandroid/graphics/Canvas;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method drawRect(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 164
    invoke-static {}, Lcom/syu/back/TrackUtils;->getUtils()Lcom/syu/back/TrackUtils;

    move-result-object v4

    iget-object v3, v4, Lcom/syu/back/TrackUtils;->rectOfView:Landroid/graphics/Rect;

    .line 165
    .local v3, "rectOfView":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    iget-object v5, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    iget v5, v5, Lcom/syu/back/TrackUtils;->axisLen:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    iget v6, v6, Lcom/syu/back/TrackUtils;->axisLen:I

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v8, v8, 0xbb8

    int-to-float v8, v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/syu/back/TrackView;->pointOfView(FFFF)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/syu/back/TrackUtils;->realToCameraForJ([F)[F

    move-result-object v0

    .line 166
    .local v0, "ps":[F
    iget-object v4, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    iget-object v5, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    iget v5, v5, Lcom/syu/back/TrackUtils;->axisLen:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    iget v6, v6, Lcom/syu/back/TrackUtils;->axisLen:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v8, v8, 0xbb8

    int-to-float v8, v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/syu/back/TrackView;->pointOfView(FFFF)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/syu/back/TrackUtils;->realToCameraForJ([F)[F

    move-result-object v1

    .line 167
    .local v1, "ps1":[F
    iget-object v4, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const/16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v4, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, p1, v9, v4}, Lcom/syu/back/TrackView;->drawLine([FLandroid/graphics/Canvas;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 171
    iget-object v4, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, p1, v9, v4}, Lcom/syu/back/TrackView;->drawLine([FLandroid/graphics/Canvas;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 172
    const/4 v4, 0x4

    new-array v2, v4, [F

    const/4 v4, 0x0

    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    aget v5, v0, v5

    aput v5, v2, v4

    const/4 v4, 0x1

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, v0, v5

    aput v5, v2, v4

    const/4 v4, 0x2

    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    aget v5, v1, v5

    aput v5, v2, v4

    const/4 v4, 0x3

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget v5, v1, v5

    aput v5, v2, v4

    .line 173
    .local v2, "ps3":[F
    iget-object v4, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 174
    return-void
.end method

.method getPointsOfArc(Lcom/syu/back/TrackUtils$Crcle;Z)[F
    .locals 10
    .param p1, "c"    # Lcom/syu/back/TrackUtils$Crcle;
    .param p2, "left"    # Z

    .prologue
    const/4 v6, 0x1

    .line 306
    iget-object v1, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    const v2, 0x453b8000    # 3000.0f

    sget v3, Lcom/syu/back/TrackView;->POINT_COUNT:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const-wide/16 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/syu/back/TrackUtils;->getAngleOfArcLen(FLcom/syu/back/TrackUtils$Crcle;DI)F

    move-result v0

    .line 307
    .local v0, "angle":F
    sget v1, Lcom/syu/back/TrackView;->POINT_COUNT:I

    mul-int/lit8 v1, v1, 0x2

    new-array v7, v1, [F

    .line 308
    .local v7, "dst":[F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget v1, Lcom/syu/back/TrackView;->POINT_COUNT:I

    if-lt v8, v1, :cond_0

    .line 314
    return-object v7

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    iget-object v2, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/syu/back/TrackUtils;->getAngleForY(Lcom/syu/back/TrackUtils$Crcle;F)F

    move-result v2

    int-to-float v3, v8

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/syu/back/TrackUtils;->getPointForAngle(Lcom/syu/back/TrackUtils$Crcle;DZ)[F

    move-result-object v9

    .line 310
    .local v9, "ps1":[F
    iget-object v1, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    invoke-virtual {v1, v9}, Lcom/syu/back/TrackUtils;->realToCameraForJ([F)[F

    move-result-object v9

    .line 311
    mul-int/lit8 v1, v8, 0x2

    const/4 v2, 0x0

    aget v2, v9, v2

    aput v2, v7, v1

    .line 312
    mul-int/lit8 v1, v8, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v2, v9, v6

    aput v2, v7, v1

    .line 308
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    iget v0, p0, Lcom/syu/back/TrackView;->mWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/syu/back/TrackView;->mHeight:I

    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 70
    iget-object v0, p0, Lcom/syu/back/TrackView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v0, p0, Lcom/syu/back/TrackView;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    iget v0, p0, Lcom/syu/back/TrackView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/syu/back/TrackView;->mHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    invoke-static {}, Lcom/syu/back/TrackView;->$SWITCH_TABLE$com$syu$back$TrackUtils$TRACK_TYPE()[I

    move-result-object v0

    iget-object v1, p0, Lcom/syu/back/TrackView;->type:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    invoke-virtual {v1}, Lcom/syu/back/TrackUtils$TRACK_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 83
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/syu/back/TrackView;->drawContent(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 86
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/syu/back/TrackView;->drawContentRect(Landroid/graphics/Canvas;Z)V

    goto :goto_1

    .line 89
    :pswitch_2
    invoke-virtual {p0, p1, v2}, Lcom/syu/back/TrackView;->drawContentRect(Landroid/graphics/Canvas;Z)V

    goto :goto_1

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 50
    invoke-virtual {p0}, Lcom/syu/back/TrackView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/syu/back/TrackView;->mWidth:I

    .line 51
    invoke-virtual {p0}, Lcom/syu/back/TrackView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/syu/back/TrackView;->mHeight:I

    .line 52
    invoke-static {}, Lcom/syu/back/TrackUtils;->initialize()Lcom/syu/back/TrackUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    .line 53
    iget-object v0, p0, Lcom/syu/back/TrackView;->utils:Lcom/syu/back/TrackUtils;

    iget v1, p0, Lcom/syu/back/TrackView;->mWidth:I

    iget v2, p0, Lcom/syu/back/TrackView;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/syu/back/TrackUtils;->setup(II)V

    .line 54
    return-void
.end method

.method pointOfView(FFFF)[F
    .locals 7
    .param p1, "startX"    # F
    .param p2, "endX"    # F
    .param p3, "startY"    # F
    .param p4, "endY"    # F

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 246
    sget v4, Lcom/syu/back/TrackView;->POINT_COUNT:I

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [F

    .line 247
    .local v3, "ps":[F
    sub-float v4, p2, p1

    sget v5, Lcom/syu/back/TrackView;->POINT_COUNT:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 248
    .local v0, "dex":F
    sub-float v4, p4, p3

    sget v5, Lcom/syu/back/TrackView;->POINT_COUNT:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 249
    .local v1, "dey":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v4, Lcom/syu/back/TrackView;->POINT_COUNT:I

    if-lt v2, v4, :cond_0

    .line 253
    const-string v4, "PP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "     pointOfView   ps ==>>  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-object v3

    .line 250
    :cond_0
    mul-int/lit8 v4, v2, 0x2

    int-to-float v5, v2

    mul-float/2addr v5, v0

    add-float/2addr v5, p1

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 251
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    int-to-float v5, v2

    mul-float/2addr v5, v1

    add-float/2addr v5, p3

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setAngle(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 264
    iget v0, p0, Lcom/syu/back/TrackView;->angle:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    :goto_1
    double-to-float v0, v0

    iput v0, p0, Lcom/syu/back/TrackView;->angle:F

    .line 266
    invoke-virtual {p0}, Lcom/syu/back/TrackView;->invalidate()V

    goto :goto_0

    .line 265
    :cond_1
    float-to-double v0, p1

    goto :goto_1
.end method

.method public setType(Lcom/syu/back/TrackUtils$TRACK_TYPE;)V
    .locals 1
    .param p1, "type"    # Lcom/syu/back/TrackUtils$TRACK_TYPE;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/syu/back/TrackView;->type:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    if-ne v0, p1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iput-object p1, p0, Lcom/syu/back/TrackView;->type:Lcom/syu/back/TrackUtils$TRACK_TYPE;

    .line 260
    invoke-virtual {p0}, Lcom/syu/back/TrackView;->invalidate()V

    goto :goto_0
.end method
