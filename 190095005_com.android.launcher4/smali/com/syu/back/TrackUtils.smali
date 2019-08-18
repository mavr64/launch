.class public Lcom/syu/back/TrackUtils;
.super Ljava/lang/Object;
.source "TrackUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/back/TrackUtils$Crcle;,
        Lcom/syu/back/TrackUtils$Cubic;,
        Lcom/syu/back/TrackUtils$Point;,
        Lcom/syu/back/TrackUtils$TRACK_TYPE;
    }
.end annotation


# static fields
.field public static final MAX_ANGLE:I = 0x23

.field static final UNIT_ANGLE:D = 0.017453292519943295

.field static utils:Lcom/syu/back/TrackUtils;


# instance fields
.field angleOfView:D

.field anglePlaceCamera:D

.field axisLen:I

.field cameraHeight:I

.field mmToPixScale:F

.field mmToPixScaleh:F

.field mmToPixScalev:F

.field radiusOfScreen:F

.field rectOfView:Landroid/graphics/Rect;

.field screenHeight:I

.field screenHeightPix:I

.field screenWidth:I

.field screenWidthPix:I

.field taillightAxis:I

.field wheelBase:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0xa5a

    iput v0, p0, Lcom/syu/back/TrackUtils;->wheelBase:I

    .line 28
    const/16 v0, 0x604

    iput v0, p0, Lcom/syu/back/TrackUtils;->axisLen:I

    .line 30
    const/16 v0, 0x320

    iput v0, p0, Lcom/syu/back/TrackUtils;->taillightAxis:I

    .line 32
    const-wide v0, 0x3fed0ad2c7c63f7dL    # 0.9075712110370514

    iput-wide v0, p0, Lcom/syu/back/TrackUtils;->angleOfView:D

    .line 34
    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    iput-wide v0, p0, Lcom/syu/back/TrackUtils;->anglePlaceCamera:D

    .line 36
    const/16 v0, 0x190

    iput v0, p0, Lcom/syu/back/TrackUtils;->cameraHeight:I

    .line 38
    const/16 v0, 0xdc

    iput v0, p0, Lcom/syu/back/TrackUtils;->screenWidth:I

    .line 40
    const/16 v0, 0x78

    iput v0, p0, Lcom/syu/back/TrackUtils;->screenHeight:I

    .line 42
    const/16 v0, 0x400

    iput v0, p0, Lcom/syu/back/TrackUtils;->screenWidthPix:I

    .line 44
    const/16 v0, 0x258

    iput v0, p0, Lcom/syu/back/TrackUtils;->screenHeightPix:I

    .line 13
    return-void
.end method

.method public static getUtils()Lcom/syu/back/TrackUtils;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/syu/back/TrackUtils;->utils:Lcom/syu/back/TrackUtils;

    return-object v0
.end method

.method public static initialize()Lcom/syu/back/TrackUtils;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/syu/back/TrackUtils;->utils:Lcom/syu/back/TrackUtils;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/syu/back/TrackUtils;

    invoke-direct {v0}, Lcom/syu/back/TrackUtils;-><init>()V

    sput-object v0, Lcom/syu/back/TrackUtils;->utils:Lcom/syu/back/TrackUtils;

    .line 104
    sget-object v0, Lcom/syu/back/TrackUtils;->utils:Lcom/syu/back/TrackUtils;

    invoke-virtual {v0}, Lcom/syu/back/TrackUtils;->calculateRectOfView()Landroid/graphics/Rect;

    .line 106
    :cond_0
    sget-object v0, Lcom/syu/back/TrackUtils;->utils:Lcom/syu/back/TrackUtils;

    return-object v0
.end method

.method public static initialize(IIIIIII)Lcom/syu/back/TrackUtils;
    .locals 8
    .param p0, "wheel"    # I
    .param p1, "axis"    # I
    .param p2, "tailling"    # I
    .param p3, "angleofview"    # I
    .param p4, "angleofplace"    # I
    .param p5, "sw"    # I
    .param p6, "sh"    # I

    .prologue
    .line 111
    sget-object v0, Lcom/syu/back/TrackUtils;->utils:Lcom/syu/back/TrackUtils;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/syu/back/TrackUtils;

    invoke-direct {v0}, Lcom/syu/back/TrackUtils;-><init>()V

    sput-object v0, Lcom/syu/back/TrackUtils;->utils:Lcom/syu/back/TrackUtils;

    .line 113
    :cond_0
    sget-object v0, Lcom/syu/back/TrackUtils;->utils:Lcom/syu/back/TrackUtils;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/syu/back/TrackUtils;->setup(IIIIIII)V

    .line 114
    sget-object v0, Lcom/syu/back/TrackUtils;->utils:Lcom/syu/back/TrackUtils;

    return-object v0
.end method


# virtual methods
.method public calculateCrcle(F)[Lcom/syu/back/TrackUtils$Crcle;
    .locals 10
    .param p1, "angle"    # F

    .prologue
    .line 153
    const/4 v5, 0x2

    new-array v4, v5, [Lcom/syu/back/TrackUtils$Crcle;

    .line 154
    .local v4, "crcles":[Lcom/syu/back/TrackUtils$Crcle;
    new-instance v0, Lcom/syu/back/TrackUtils$Crcle;

    invoke-direct {v0}, Lcom/syu/back/TrackUtils$Crcle;-><init>()V

    .line 155
    .local v0, "c1":Lcom/syu/back/TrackUtils$Crcle;
    new-instance v1, Lcom/syu/back/TrackUtils$Crcle;

    invoke-direct {v1}, Lcom/syu/back/TrackUtils$Crcle;-><init>()V

    .line 156
    .local v1, "c2":Lcom/syu/back/TrackUtils$Crcle;
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    div-double v2, v6, v8

    .line 157
    .local v2, "cot_a":D
    iget v5, p0, Lcom/syu/back/TrackUtils;->wheelBase:I

    int-to-double v6, v5

    mul-double/2addr v6, v2

    double-to-float v5, v6

    neg-float v5, v5

    iput v5, v1, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    iput v5, v0, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    .line 158
    iget v5, p0, Lcom/syu/back/TrackUtils;->taillightAxis:I

    neg-int v5, v5

    int-to-float v5, v5

    iput v5, v1, Lcom/syu/back/TrackUtils$Crcle;->cy:F

    iput v5, v0, Lcom/syu/back/TrackUtils$Crcle;->cy:F

    .line 159
    iget v5, v0, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/syu/back/TrackUtils;->axisLen:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    .line 160
    iget v5, v1, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/syu/back/TrackUtils;->axisLen:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    .line 161
    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 162
    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 163
    const-string v5, "PP"

    const-string v6, "c1 cx = %f, cy = %f, radius = %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v0, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v0, Lcom/syu/back/TrackUtils$Crcle;->cy:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget v9, v0, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v5, "PP"

    const-string v6, "c2 cx = %f, cy = %f, radius = %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v1, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v1, Lcom/syu/back/TrackUtils$Crcle;->cy:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget v9, v1, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-object v4
.end method

.method public calculateRectOfView()Landroid/graphics/Rect;
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 141
    iget-object v3, p0, Lcom/syu/back/TrackUtils;->rectOfView:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 142
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/syu/back/TrackUtils;->rectOfView:Landroid/graphics/Rect;

    .line 144
    :cond_0
    iget-wide v4, p0, Lcom/syu/back/TrackUtils;->angleOfView:D

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/syu/back/TrackUtils;->cameraHeight:I

    int-to-double v6, v3

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/syu/back/TrackUtils;->anglePlaceCamera:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    add-double/2addr v4, v10

    double-to-int v2, v4

    .line 145
    .local v2, "vw":I
    iget v3, p0, Lcom/syu/back/TrackUtils;->cameraHeight:I

    int-to-double v4, v3

    iget-wide v6, p0, Lcom/syu/back/TrackUtils;->angleOfView:D

    iget-wide v8, p0, Lcom/syu/back/TrackUtils;->anglePlaceCamera:D

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    add-double/2addr v4, v10

    double-to-int v1, v4

    .line 146
    .local v1, "minY":I
    iget v3, p0, Lcom/syu/back/TrackUtils;->cameraHeight:I

    int-to-double v4, v3

    iget-wide v6, p0, Lcom/syu/back/TrackUtils;->anglePlaceCamera:D

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    add-double/2addr v4, v10

    double-to-int v0, v4

    .line 147
    .local v0, "maxY":I
    const-string v3, "PP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ps     cc ==>>  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "vw = %d,  max Y= %d, minY = %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v3, p0, Lcom/syu/back/TrackUtils;->rectOfView:Landroid/graphics/Rect;

    neg-int v4, v2

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v2, 0x2

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 149
    iget-object v3, p0, Lcom/syu/back/TrackUtils;->rectOfView:Landroid/graphics/Rect;

    return-object v3
.end method

.method public getAngleForY(Lcom/syu/back/TrackUtils$Crcle;F)F
    .locals 2
    .param p1, "c"    # Lcom/syu/back/TrackUtils$Crcle;
    .param p2, "y"    # F

    .prologue
    .line 243
    iget v0, p1, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    int-to-float v0, v0

    div-float v0, p2, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getAngleOfArcLen(FLcom/syu/back/TrackUtils$Crcle;DI)F
    .locals 13
    .param p1, "len"    # F
    .param p2, "c"    # Lcom/syu/back/TrackUtils$Crcle;
    .param p3, "startAngle"    # D
    .param p5, "mode"    # I

    .prologue
    .line 237
    float-to-double v6, p1

    iget v5, p2, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    int-to-double v8, v5

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    const-wide v10, 0x4076800000000000L    # 360.0

    div-double/2addr v8, v10

    div-double/2addr v6, v8

    const-wide v8, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v2, v6, v8

    .line 238
    .local v2, "angle":D
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 239
    .local v4, "ps":[I
    move/from16 v0, p5

    int-to-double v6, v0

    mul-double/2addr v6, v2

    add-double v6, v6, p3

    double-to-float v5, v6

    return v5
.end method

.method public getCameraOffPix()I
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/syu/back/TrackUtils;->rectOfView:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/syu/back/TrackUtils;->mmToPixScalev:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPointForAngle(Lcom/syu/back/TrackUtils$Crcle;DZ)[F
    .locals 10
    .param p1, "c"    # Lcom/syu/back/TrackUtils$Crcle;
    .param p2, "angle"    # D
    .param p4, "left"    # Z

    .prologue
    .line 247
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 249
    .local v0, "ps":[F
    const/4 v2, 0x0

    if-eqz p4, :cond_0

    iget v1, p1, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    float-to-double v4, v1

    iget v1, p1, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    int-to-double v6, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v1, v4

    :goto_0
    aput v1, v0, v2

    .line 250
    const/4 v1, 0x1

    iget v2, p1, Lcom/syu/back/TrackUtils$Crcle;->cy:F

    float-to-double v2, v2

    iget v4, p1, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    int-to-double v4, v4

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    neg-float v2, v2

    aput v2, v0, v1

    .line 251
    return-object v0

    .line 249
    :cond_0
    iget v1, p1, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    float-to-double v4, v1

    iget v1, p1, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    int-to-double v6, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v1, v4

    goto :goto_0
.end method

.method public mmToPix([Lcom/syu/back/TrackUtils$Point;)[Lcom/syu/back/TrackUtils$Point;
    .locals 3
    .param p1, "points"    # [Lcom/syu/back/TrackUtils$Point;

    .prologue
    .line 262
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_2

    .line 263
    :cond_0
    const/4 v1, 0x0

    .line 268
    :cond_1
    return-object v1

    .line 264
    :cond_2
    array-length v2, p1

    new-array v1, v2, [Lcom/syu/back/TrackUtils$Point;

    .line 265
    .local v1, "mPoints":[Lcom/syu/back/TrackUtils$Point;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 266
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/syu/back/TrackUtils;->mmToPixPoint(Lcom/syu/back/TrackUtils$Point;)Lcom/syu/back/TrackUtils$Point;

    move-result-object v2

    aput-object v2, v1, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public mmToPixPoint(Lcom/syu/back/TrackUtils$Point;)Lcom/syu/back/TrackUtils$Point;
    .locals 4
    .param p1, "point"    # Lcom/syu/back/TrackUtils$Point;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 255
    new-instance v0, Lcom/syu/back/TrackUtils$Point;

    invoke-direct {v0}, Lcom/syu/back/TrackUtils$Point;-><init>()V

    .line 256
    .local v0, "p":Lcom/syu/back/TrackUtils$Point;
    iget v1, p1, Lcom/syu/back/TrackUtils$Point;->y:F

    iget v2, p0, Lcom/syu/back/TrackUtils;->mmToPixScalev:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, v0, Lcom/syu/back/TrackUtils$Point;->y:F

    .line 257
    iget v1, p1, Lcom/syu/back/TrackUtils$Point;->x:F

    iget v2, p0, Lcom/syu/back/TrackUtils;->mmToPixScaleh:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, v0, Lcom/syu/back/TrackUtils$Point;->x:F

    .line 258
    return-object v0
.end method

.method public realToCamera([F)[F
    .locals 24
    .param p1, "points"    # [F

    .prologue
    .line 191
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v15, v0

    if-lez v15, :cond_0

    move-object/from16 v0, p1

    array-length v15, v0

    rem-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_1

    :cond_0
    const/4 v10, 0x0

    .line 192
    .local v10, "count":I
    :goto_0
    new-array v12, v10, [F

    .line 193
    .local v12, "ps":[F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    div-int/lit8 v15, v10, 0x2

    if-lt v11, v15, :cond_2

    .line 207
    return-object v12

    .line 191
    .end local v10    # "count":I
    .end local v11    # "i":I
    .end local v12    # "ps":[F
    :cond_1
    move-object/from16 v0, p1

    array-length v10, v0

    goto :goto_0

    .line 194
    .restart local v10    # "count":I
    .restart local v11    # "i":I
    .restart local v12    # "ps":[F
    :cond_2
    mul-int/lit8 v15, v11, 0x2

    aget v13, p1, v15

    .line 195
    .local v13, "x":F
    mul-int/lit8 v15, v11, 0x2

    add-int/lit8 v15, v15, 0x1

    aget v14, p1, v15

    .line 196
    .local v14, "y":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/syu/back/TrackUtils;->cameraHeight:I

    int-to-float v15, v15

    div-float/2addr v15, v14

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    .line 197
    .local v8, "arctg":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/syu/back/TrackUtils;->angleOfView:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/syu/back/TrackUtils;->anglePlaceCamera:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    sub-double v2, v16, v8

    .line 198
    .local v2, "angle1":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/syu/back/TrackUtils;->anglePlaceCamera:D

    move-wide/from16 v16, v0

    sub-double v4, v16, v8

    .line 199
    .local v4, "angle2":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/syu/back/TrackUtils;->angleOfView:D

    .line 200
    .local v6, "angle3":D
    const-string v15, "PP"

    .line 201
    const-string v16, "arctg = %f, angle1= %f, , angle2= %f, , angle3= %f"

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 200
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v15, "PP"

    const-string v16, "Math.tan(angle3) = %f"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    mul-int/lit8 v15, v11, 0x2

    add-int/lit8 v15, v15, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    div-double v16, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/back/TrackUtils;->screenHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    div-double v18, v18, v20

    mul-double v16, v16, v18

    .line 204
    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/back/TrackUtils;->mmToPixScalev:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    .line 203
    aput v16, v12, v15

    .line 205
    mul-int/lit8 v15, v11, 0x2

    float-to-double v0, v13

    move-wide/from16 v16, v0

    float-to-double v0, v14

    move-wide/from16 v18, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    div-double v16, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/back/TrackUtils;->screenWidth:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/back/TrackUtils;->mmToPixScaleh:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v12, v15

    .line 193
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1
.end method

.method public realToCamera([Lcom/syu/back/TrackUtils$Point;)[Lcom/syu/back/TrackUtils$Point;
    .locals 3
    .param p1, "points"    # [Lcom/syu/back/TrackUtils$Point;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_2

    .line 182
    :cond_0
    const/4 v1, 0x0

    .line 187
    :cond_1
    return-object v1

    .line 183
    :cond_2
    array-length v2, p1

    new-array v1, v2, [Lcom/syu/back/TrackUtils$Point;

    .line 184
    .local v1, "mPoints":[Lcom/syu/back/TrackUtils$Point;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 185
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/syu/back/TrackUtils;->realToCameraPoint(Lcom/syu/back/TrackUtils$Point;)Lcom/syu/back/TrackUtils$Point;

    move-result-object v2

    aput-object v2, v1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public realToCameraForJ([F)[F
    .locals 22
    .param p1, "points"    # [F

    .prologue
    .line 211
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v15, v0

    if-lez v15, :cond_0

    move-object/from16 v0, p1

    array-length v15, v0

    rem-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_1

    :cond_0
    const/4 v8, 0x0

    .line 212
    .local v8, "count":I
    :goto_0
    new-array v10, v8, [F

    .line 213
    .local v10, "ps":[F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    div-int/lit8 v15, v8, 0x2

    if-lt v9, v15, :cond_2

    .line 233
    return-object v10

    .line 211
    .end local v8    # "count":I
    .end local v9    # "i":I
    .end local v10    # "ps":[F
    :cond_1
    move-object/from16 v0, p1

    array-length v8, v0

    goto :goto_0

    .line 214
    .restart local v8    # "count":I
    .restart local v9    # "i":I
    .restart local v10    # "ps":[F
    :cond_2
    mul-int/lit8 v15, v9, 0x2

    aget v11, p1, v15

    .line 215
    .local v11, "x":F
    mul-int/lit8 v15, v9, 0x2

    add-int/lit8 v15, v15, 0x1

    aget v14, p1, v15

    .line 216
    .local v14, "y":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/syu/back/TrackUtils;->cameraHeight:I

    int-to-float v15, v15

    div-float/2addr v15, v14

    float-to-double v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    .line 217
    .local v6, "arctg":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/syu/back/TrackUtils;->anglePlaceCamera:D

    move-wide/from16 v18, v0

    sub-double v2, v6, v18

    .line 218
    .local v2, "angle1":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/syu/back/TrackUtils;->angleOfView:D

    .line 223
    .local v4, "angle2":D
    move-object/from16 v0, p0

    iget v15, v0, Lcom/syu/back/TrackUtils;->cameraHeight:I

    int-to-double v0, v15

    move-wide/from16 v18, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    div-double v18, v18, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v16, v18, v20

    .line 224
    .local v16, "y1":D
    move-object/from16 v0, p0

    iget v15, v0, Lcom/syu/back/TrackUtils;->cameraHeight:I

    int-to-double v0, v15

    move-wide/from16 v18, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    div-double v18, v18, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    mul-double v12, v18, v20

    .line 226
    .local v12, "r":D
    mul-int/lit8 v15, v9, 0x2

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/back/TrackUtils;->radiusOfScreen:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v18, v12

    mul-double v18, v18, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/back/TrackUtils;->mmToPixScale:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v10, v15

    .line 228
    mul-int/lit8 v15, v9, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/back/TrackUtils;->radiusOfScreen:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v18, v12

    float-to-double v0, v11

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/back/TrackUtils;->mmToPixScale:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v10, v15

    .line 213
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1
.end method

.method public realToCameraPoint(Lcom/syu/back/TrackUtils$Point;)Lcom/syu/back/TrackUtils$Point;
    .locals 20
    .param p1, "point"    # Lcom/syu/back/TrackUtils$Point;

    .prologue
    .line 169
    move-object/from16 v0, p0

    iget v11, v0, Lcom/syu/back/TrackUtils;->cameraHeight:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/syu/back/TrackUtils$Point;->y:F

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    .line 170
    .local v8, "arctg":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/syu/back/TrackUtils;->angleOfView:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/syu/back/TrackUtils;->anglePlaceCamera:D

    add-double/2addr v12, v14

    sub-double v2, v12, v8

    .line 171
    .local v2, "angle1":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/syu/back/TrackUtils;->anglePlaceCamera:D

    sub-double v4, v12, v8

    .line 172
    .local v4, "angle2":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/syu/back/TrackUtils;->angleOfView:D

    .line 174
    .local v6, "angle3":D
    new-instance v10, Lcom/syu/back/TrackUtils$Point;

    invoke-direct {v10}, Lcom/syu/back/TrackUtils$Point;-><init>()V

    .line 175
    .local v10, "p":Lcom/syu/back/TrackUtils$Point;
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/syu/back/TrackUtils;->screenHeight:I

    int-to-double v14, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    div-double v14, v14, v16

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v11, v12

    int-to-float v11, v11

    iput v11, v10, Lcom/syu/back/TrackUtils$Point;->y:F

    .line 176
    move-object/from16 v0, p1

    iget v11, v0, Lcom/syu/back/TrackUtils$Point;->x:F

    float-to-double v12, v11

    move-object/from16 v0, p1

    iget v11, v0, Lcom/syu/back/TrackUtils$Point;->y:F

    float-to-double v14, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lcom/syu/back/TrackUtils;->screenWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-double v14, v11

    mul-double/2addr v12, v14

    double-to-int v11, v12

    int-to-float v11, v11

    iput v11, v10, Lcom/syu/back/TrackUtils$Point;->x:F

    .line 177
    return-object v10
.end method

.method setup(II)V
    .locals 8
    .param p1, "swpix"    # I
    .param p2, "shpix"    # I

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 129
    iput p1, p0, Lcom/syu/back/TrackUtils;->screenWidthPix:I

    .line 130
    iput p2, p0, Lcom/syu/back/TrackUtils;->screenHeightPix:I

    .line 131
    iget v0, p0, Lcom/syu/back/TrackUtils;->screenHeightPix:I

    int-to-float v0, v0

    iget v1, p0, Lcom/syu/back/TrackUtils;->screenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/syu/back/TrackUtils;->mmToPixScalev:F

    .line 132
    iget v0, p0, Lcom/syu/back/TrackUtils;->screenWidthPix:I

    int-to-float v0, v0

    iget v1, p0, Lcom/syu/back/TrackUtils;->screenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/syu/back/TrackUtils;->mmToPixScaleh:F

    .line 133
    iget v0, p0, Lcom/syu/back/TrackUtils;->screenWidthPix:I

    int-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/syu/back/TrackUtils;->screenHeightPix:I

    int-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 134
    iget v2, p0, Lcom/syu/back/TrackUtils;->screenWidth:I

    int-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v4, p0, Lcom/syu/back/TrackUtils;->screenHeight:I

    int-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 133
    iput v0, p0, Lcom/syu/back/TrackUtils;->mmToPixScale:F

    .line 137
    iget v0, p0, Lcom/syu/back/TrackUtils;->screenWidth:I

    int-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/syu/back/TrackUtils;->screenHeight:I

    int-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v0, v6

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/syu/back/TrackUtils;->radiusOfScreen:F

    .line 138
    return-void
.end method

.method setup(IIIIIII)V
    .locals 6
    .param p1, "wheel"    # I
    .param p2, "axis"    # I
    .param p3, "tailling"    # I
    .param p4, "angleofview"    # I
    .param p5, "angleofplace"    # I
    .param p6, "sw"    # I
    .param p7, "sh"    # I

    .prologue
    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 118
    iput p1, p0, Lcom/syu/back/TrackUtils;->wheelBase:I

    .line 119
    iput p2, p0, Lcom/syu/back/TrackUtils;->axisLen:I

    .line 120
    iput p3, p0, Lcom/syu/back/TrackUtils;->taillightAxis:I

    .line 121
    int-to-double v0, p4

    mul-double/2addr v0, v4

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/syu/back/TrackUtils;->angleOfView:D

    .line 122
    int-to-double v0, p5

    mul-double/2addr v0, v4

    iput-wide v0, p0, Lcom/syu/back/TrackUtils;->anglePlaceCamera:D

    .line 123
    iput p6, p0, Lcom/syu/back/TrackUtils;->screenWidth:I

    .line 124
    iput p7, p0, Lcom/syu/back/TrackUtils;->screenHeight:I

    .line 125
    invoke-virtual {p0}, Lcom/syu/back/TrackUtils;->calculateRectOfView()Landroid/graphics/Rect;

    .line 126
    return-void
.end method
