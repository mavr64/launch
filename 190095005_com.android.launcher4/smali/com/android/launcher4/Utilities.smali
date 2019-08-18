.class final Lcom/android/launcher4/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.Utilities"

.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field public static sIconCnt:I

.field private static sIconHeight:I

.field private static sIconSize:I

.field public static sIconTextureHeight:I

.field public static sIconTextureWidth:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 49
    sput v0, Lcom/android/launcher4/Utilities;->sIconSize:I

    .line 50
    sput v0, Lcom/android/launcher4/Utilities;->sIconWidth:I

    .line 51
    sput v0, Lcom/android/launcher4/Utilities;->sIconHeight:I

    .line 52
    sput v0, Lcom/android/launcher4/Utilities;->sIconTextureWidth:I

    .line 53
    sput v0, Lcom/android/launcher4/Utilities;->sIconTextureHeight:I

    .line 54
    sput v4, Lcom/android/launcher4/Utilities;->sIconCnt:I

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher4/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher4/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher4/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher4/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher4/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher4/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 64
    sget-object v0, Lcom/android/launcher4/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    .line 65
    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher4/Utilities;->sColors:[I

    .line 68
    sput v4, Lcom/android/launcher4/Utilities;->sColorIndex:I

    return-void

    .line 67
    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "icon"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    sget v4, Lcom/android/launcher4/Utilities;->sIconTextureWidth:I

    .line 110
    .local v4, "textureWidth":I
    sget v3, Lcom/android/launcher4/Utilities;->sIconTextureHeight:I

    .line 111
    .local v3, "textureHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 112
    .local v2, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 113
    .local v1, "sourceHeight":I
    if-le v2, v4, :cond_1

    if-le v1, v3, :cond_1

    .line 116
    sub-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    .line 117
    sub-int v6, v1, v3

    div-int/lit8 v6, v6, 0x2

    .line 116
    invoke-static {p0, v5, v6, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 125
    .end local p0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 119
    .restart local p0    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    if-ne v2, v4, :cond_2

    if-eq v1, v3, :cond_0

    .line 124
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v5, p1}, Lcom/android/launcher4/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    sget-object v18, Lcom/android/launcher4/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v18

    .line 135
    :try_start_0
    sget v17, Lcom/android/launcher4/Utilities;->sIconWidth:I

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 136
    invoke-static/range {p1 .. p1}, Lcom/android/launcher4/Utilities;->initStatics(Landroid/content/Context;)V

    .line 139
    :cond_0
    sget v16, Lcom/android/launcher4/Utilities;->sIconWidth:I

    .line 140
    .local v16, "width":I
    sget v7, Lcom/android/launcher4/Utilities;->sIconHeight:I

    .line 142
    .local v7, "height":I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 143
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v9, v0

    .line 144
    .local v9, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 145
    invoke-virtual {v9, v7}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 155
    .end local v9    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 156
    .local v12, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 157
    .local v11, "sourceHeight":I
    if-lez v12, :cond_2

    if-lez v11, :cond_2

    .line 159
    int-to-float v0, v12

    move/from16 v17, v0

    int-to-float v0, v11

    move/from16 v19, v0

    div-float v10, v17, v19

    .line 160
    .local v10, "ratio":F
    if-le v12, v11, :cond_4

    .line 161
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v7, v0

    .line 168
    .end local v10    # "ratio":F
    :cond_2
    :goto_1
    sget v14, Lcom/android/launcher4/Utilities;->sIconTextureWidth:I

    .line 169
    .local v14, "textureWidth":I
    sget v13, Lcom/android/launcher4/Utilities;->sIconTextureHeight:I

    .line 172
    .local v13, "textureHeight":I
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 171
    move-object/from16 v0, v17

    invoke-static {v14, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 173
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/android/launcher4/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 174
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    sub-int v17, v14, v16

    div-int/lit8 v8, v17, 0x2

    .line 177
    .local v8, "left":I
    sub-int v17, v13, v7

    div-int/lit8 v15, v17, 0x2

    .line 181
    .local v15, "top":I
    const/4 v6, 0x0

    .line 193
    .local v6, "debug":Z
    sget-object v17, Lcom/android/launcher4/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 194
    add-int v17, v8, v16

    add-int v19, v15, v7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v8, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 195
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 196
    sget-object v17, Lcom/android/launcher4/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 197
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    monitor-exit v18

    return-object v3

    .line 146
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "debug":Z
    .end local v8    # "left":I
    .end local v11    # "sourceHeight":I
    .end local v12    # "sourceWidth":I
    .end local v13    # "textureHeight":I
    .end local v14    # "textureWidth":I
    .end local v15    # "top":I
    :cond_3
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 148
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0

    .line 149
    .local v4, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 150
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v17

    if-nez v17, :cond_1

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 152
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    .line 151
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 134
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "height":I
    .end local v16    # "width":I
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 162
    .restart local v7    # "height":I
    .restart local v10    # "ratio":F
    .restart local v11    # "sourceHeight":I
    .restart local v12    # "sourceWidth":I
    .restart local v16    # "width":I
    :cond_4
    if-le v11, v12, :cond_2

    .line 163
    int-to-float v0, v7

    move/from16 v17, v0

    mul-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    goto :goto_1
.end method

.method static createIconBitmap_enlarge(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 26
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    sget-object v22, Lcom/android/launcher4/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v22

    .line 205
    :try_start_0
    sget v21, Lcom/android/launcher4/Utilities;->sIconWidth:I

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 206
    invoke-static/range {p1 .. p1}, Lcom/android/launcher4/Utilities;->initStatics(Landroid/content/Context;)V

    .line 209
    :cond_0
    sget v20, Lcom/android/launcher4/Utilities;->sIconWidth:I

    .line 210
    .local v20, "width":I
    sget v9, Lcom/android/launcher4/Utilities;->sIconHeight:I

    .line 212
    .local v9, "height":I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 213
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v14, v0

    .line 214
    .local v14, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 215
    invoke-virtual {v14, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 225
    .end local v14    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 226
    .local v16, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 227
    .local v15, "sourceHeight":I
    if-lez v16, :cond_2

    .line 238
    :cond_2
    sget v18, Lcom/android/launcher4/Utilities;->sIconTextureWidth:I

    .line 239
    .local v18, "textureWidth":I
    sget v17, Lcom/android/launcher4/Utilities;->sIconTextureHeight:I

    .line 242
    .local v17, "textureHeight":I
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 241
    move/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 243
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    sget-object v7, Lcom/android/launcher4/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 244
    .local v7, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    sub-int v21, v18, v20

    div-int/lit8 v10, v21, 0x2

    .line 247
    .local v10, "left":I
    sub-int v21, v17, v9

    div-int/lit8 v19, v21, 0x2

    .line 249
    .local v19, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 250
    const v23, 0x7f020610

    .line 249
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 251
    .local v12, "micon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 252
    .local v13, "mwidth":I
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 261
    .local v11, "mheight":I
    invoke-virtual {v12, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    sget-object v21, Lcom/android/launcher4/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 264
    const/4 v8, 0x0

    .line 265
    .local v8, "gap":I
    sget-object v21, Lcom/android/launcher4/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 266
    add-int v21, v10, v8

    add-int v23, v19, v8

    add-int v24, v10, v20

    add-int v25, v19, v9

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 269
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 270
    sget-object v21, Lcom/android/launcher4/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 271
    monitor-exit v22

    return-object v5

    .line 216
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "gap":I
    .end local v10    # "left":I
    .end local v11    # "mheight":I
    .end local v12    # "micon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "mwidth":I
    .end local v15    # "sourceHeight":I
    .end local v16    # "sourceWidth":I
    .end local v17    # "textureHeight":I
    .end local v18    # "textureWidth":I
    .end local v19    # "top":I
    :cond_3
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 218
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 219
    .local v6, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 220
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v21

    if-nez v21, :cond_1

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 222
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    .line 221
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 204
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v9    # "height":I
    .end local v20    # "width":I
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21
.end method

.method static createIconBitmap_minify(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 34
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    sget-object v29, Lcom/android/launcher4/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v29

    .line 278
    :try_start_0
    sget v28, Lcom/android/launcher4/Utilities;->sIconWidth:I

    const/16 v30, -0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_0

    .line 279
    invoke-static/range {p1 .. p1}, Lcom/android/launcher4/Utilities;->initStatics(Landroid/content/Context;)V

    .line 282
    :cond_0
    sget v27, Lcom/android/launcher4/Utilities;->sIconWidth:I

    .line 283
    .local v27, "width":I
    sget v10, Lcom/android/launcher4/Utilities;->sIconHeight:I

    .line 285
    .local v10, "height":I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 286
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object/from16 v16, v0

    .line 287
    .local v16, "painter":Landroid/graphics/drawable/PaintDrawable;
    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 288
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 298
    .end local v16    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 299
    .local v23, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    .line 300
    .local v22, "sourceHeight":I
    if-lez v23, :cond_2

    if-lez v22, :cond_2

    .line 302
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v17, v28, v30

    .line 303
    .local v17, "ratio":F
    move/from16 v0, v23

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 304
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v28, v28, v17

    move/from16 v0, v28

    float-to-int v10, v0

    .line 311
    .end local v17    # "ratio":F
    :cond_2
    :goto_1
    sget v25, Lcom/android/launcher4/Utilities;->sIconTextureWidth:I

    .line 312
    .local v25, "textureWidth":I
    sget v24, Lcom/android/launcher4/Utilities;->sIconTextureHeight:I

    .line 315
    .local v24, "textureHeight":I
    sget-object v28, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 314
    move/from16 v0, v25

    move/from16 v1, v24

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 316
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    sget-object v8, Lcom/android/launcher4/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 317
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 319
    sub-int v28, v25, v27

    div-int/lit8 v11, v28, 0x2

    .line 320
    .local v11, "left":I
    sub-int v28, v24, v10

    div-int/lit8 v26, v28, 0x2

    .line 329
    .local v26, "top":I
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    sget v28, Lcom/android/launcher4/Utilities;->sIconSize:I

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v20, v30, v32

    .line 330
    .local v20, "scale_w":D
    int-to-double v0, v10

    move-wide/from16 v30, v0

    sget v28, Lcom/android/launcher4/Utilities;->sIconSize:I

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v18, v30, v32

    .line 332
    .local v18, "scale_h":D
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v30, v30, v20

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v27, v0

    .line 333
    int-to-double v0, v10

    move-wide/from16 v30, v0

    div-double v30, v30, v18

    move-wide/from16 v0, v30

    double-to-int v10, v0

    .line 335
    sub-int v28, v25, v27

    div-int/lit8 v11, v28, 0x2

    .line 336
    sub-int v28, v24, v10

    div-int/lit8 v28, v28, 0x2

    add-int/lit8 v26, v28, -0x2

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 339
    const v30, 0x7f020610

    sget v31, Lcom/android/launcher4/Utilities;->sIconCnt:I

    add-int v30, v30, v31

    .line 338
    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 341
    .local v13, "micon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v30, 0x7f0a0013

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 342
    sget v28, Lcom/android/launcher4/Utilities;->sIconCnt:I

    add-int/lit8 v28, v28, 0x1

    sput v28, Lcom/android/launcher4/Utilities;->sIconCnt:I

    .line 343
    sget v28, Lcom/android/launcher4/Utilities;->sIconCnt:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0b0027

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v30

    move/from16 v0, v28

    move/from16 v1, v30

    if-lt v0, v1, :cond_3

    .line 344
    const/16 v28, 0x0

    sput v28, Lcom/android/launcher4/Utilities;->sIconCnt:I

    .line 348
    :cond_3
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 349
    .local v14, "mwidth":I
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 350
    .local v12, "mheight":I
    sub-int v28, v25, v14

    div-int/lit8 v28, v28, 0x2

    .line 351
    sub-int v30, v24, v12

    div-int/lit8 v30, v30, 0x2

    sub-int v31, v25, v14

    div-int/lit8 v31, v31, 0x2

    .line 352
    add-int v31, v31, v14

    sub-int v32, v24, v12

    div-int/lit8 v32, v32, 0x2

    add-int v32, v32, v12

    .line 350
    move/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 357
    invoke-virtual {v13, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 358
    sget-object v28, Lcom/android/launcher4/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 360
    sget-object v28, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v30, 0x7f0b0024

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 361
    .local v9, "gap":I
    sget-object v28, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v30, 0x7f0b0025

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 362
    .local v15, "offest":I
    sget-object v28, Lcom/android/launcher4/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 363
    add-int v28, v11, v9

    add-int v30, v26, v9

    sub-int v30, v30, v15

    add-int v31, v11, v27

    sub-int v31, v31, v9

    .line 364
    add-int v32, v26, v10

    sub-int v32, v32, v9

    sub-int v32, v32, v15

    .line 363
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 366
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    sget-object v28, Lcom/android/launcher4/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 368
    monitor-exit v29

    return-object v6

    .line 289
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "gap":I
    .end local v11    # "left":I
    .end local v12    # "mheight":I
    .end local v13    # "micon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "mwidth":I
    .end local v15    # "offest":I
    .end local v18    # "scale_h":D
    .end local v20    # "scale_w":D
    .end local v22    # "sourceHeight":I
    .end local v23    # "sourceWidth":I
    .end local v24    # "textureHeight":I
    .end local v25    # "textureWidth":I
    .end local v26    # "top":I
    :cond_4
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 291
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v7, v0

    .line 292
    .local v7, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 293
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v28

    if-nez v28, :cond_1

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 295
    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    .line 294
    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 277
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v10    # "height":I
    .end local v27    # "width":I
    :catchall_0
    move-exception v28

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v28

    .line 305
    .restart local v10    # "height":I
    .restart local v17    # "ratio":F
    .restart local v22    # "sourceHeight":I
    .restart local v23    # "sourceWidth":I
    .restart local v27    # "width":I
    :cond_5
    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    .line 306
    int-to-float v0, v10

    move/from16 v28, v0

    mul-float v28, v28, v17

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    goto/16 :goto_1
.end method

.method static createIconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    new-instance v0, Lcom/android/launcher4/FastBitmapDrawable;

    invoke-direct {v0, p0}, Lcom/android/launcher4/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    .local v0, "d":Lcom/android/launcher4/FastBitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 88
    invoke-static {v0}, Lcom/android/launcher4/Utilities;->resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-object v0
.end method

.method public static getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F
    .locals 11
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "coord"    # [I
    .param p3, "includeRootScroll"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v0, "ancestorChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x2

    new-array v3, v7, [F

    aget v7, p2, v9

    int-to-float v7, v7

    aput v7, v3, v9

    aget v7, p2, v10

    int-to-float v7, v7

    aput v7, v3, v10

    .line 425
    .local v3, "pt":[F
    move-object v5, p0

    .line 426
    .local v5, "v":Landroid/view/View;
    :goto_0
    if-eq v5, p1, :cond_0

    if-nez v5, :cond_1

    .line 430
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const/high16 v4, 0x3f800000    # 1.0f

    .line 433
    .local v4, "scale":F
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 434
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_2

    .line 450
    aget v7, v3, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, p2, v9

    .line 451
    aget v7, v3, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, p2, v10

    .line 452
    return v4

    .line 427
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "scale":F
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .end local v5    # "v":Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .restart local v5    # "v":Landroid/view/View;
    goto :goto_0

    .line 435
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "scale":F
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 439
    .local v6, "v0":Landroid/view/View;
    if-ne v6, p0, :cond_3

    if-eqz p3, :cond_4

    .line 440
    :cond_3
    aget v7, v3, v9

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v3, v9

    .line 441
    aget v7, v3, v10

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v3, v10

    .line 444
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 445
    aget v7, v3, v9

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v3, v9

    .line 446
    aget v7, v3, v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v3, v10

    .line 447
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v7

    mul-float/2addr v4, v7

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 497
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 498
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 499
    .local v1, "density":F
    const v4, 0x7f0d0097

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/android/launcher4/Utilities;->sIconSize:I

    .line 501
    const v4, 0x7f0d0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 500
    sput v4, Lcom/android/launcher4/Utilities;->sIconWidth:I

    .line 502
    sget v4, Lcom/android/launcher4/Utilities;->sIconWidth:I

    sget-object v5, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sub-int/2addr v4, v5

    sput v4, Lcom/android/launcher4/Utilities;->sIconHeight:I

    .line 503
    sget v4, Lcom/android/launcher4/Utilities;->sIconWidth:I

    sput v4, Lcom/android/launcher4/Utilities;->sIconTextureWidth:I

    .line 504
    sget v4, Lcom/android/launcher4/Utilities;->sIconHeight:I

    sput v4, Lcom/android/launcher4/Utilities;->sIconTextureHeight:I

    .line 505
    sget-object v4, Lcom/android/launcher4/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    .line 506
    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 505
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 507
    sget-object v4, Lcom/android/launcher4/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 508
    sget-object v4, Lcom/android/launcher4/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 510
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 511
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 512
    sget-object v4, Lcom/android/launcher4/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 513
    sget-object v4, Lcom/android/launcher4/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 514
    return-void
.end method

.method public static mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[I)F
    .locals 13
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "coord"    # [I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v1, "ancestorChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v9, 0x2

    new-array v6, v9, [F

    aget v9, p2, v11

    int-to-float v9, v9

    aput v9, v6, v11

    aget v9, p2, v12

    int-to-float v9, v9

    aput v9, v6, v12

    .line 464
    .local v6, "pt":[F
    move-object v8, p0

    .line 465
    .local v8, "v":Landroid/view/View;
    :goto_0
    if-ne v8, p1, :cond_0

    .line 469
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    const/high16 v7, 0x3f800000    # 1.0f

    .line 472
    .local v7, "scale":F
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 473
    .local v4, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 474
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-gez v3, :cond_1

    .line 490
    aget v9, v6, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, p2, v11

    .line 491
    aget v9, v6, v12

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, p2, v12

    .line 492
    return v7

    .line 466
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "inverse":Landroid/graphics/Matrix;
    .end local v7    # "scale":F
    :cond_0
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .end local v8    # "v":Landroid/view/View;
    check-cast v8, Landroid/view/View;

    .restart local v8    # "v":Landroid/view/View;
    goto :goto_0

    .line 475
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "inverse":Landroid/graphics/Matrix;
    .restart local v7    # "scale":F
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 476
    .local v0, "ancestor":Landroid/view/View;
    if-lez v3, :cond_3

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v5, v9

    .line 478
    .local v5, "next":Landroid/view/View;
    :goto_2
    aget v9, v6, v11

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v6, v11

    .line 479
    aget v9, v6, v12

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v6, v12

    .line 481
    if-eqz v5, :cond_2

    .line 482
    aget v9, v6, v11

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    aput v9, v6, v11

    .line 483
    aget v9, v6, v12

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    aput v9, v6, v12

    .line 484
    invoke-virtual {v5}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 485
    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 486
    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v9

    mul-float/2addr v7, v9

    .line 474
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 476
    .end local v5    # "next":Landroid/view/View;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    sget-object v2, Lcom/android/launcher4/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v2

    .line 385
    :try_start_0
    sget v1, Lcom/android/launcher4/Utilities;->sIconWidth:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 386
    invoke-static {p1}, Lcom/android/launcher4/Utilities;->initStatics(Landroid/content/Context;)V

    .line 389
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v3, Lcom/android/launcher4/Utilities;->sIconWidth:I

    if-ne v1, v3, :cond_1

    .line 390
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v3, Lcom/android/launcher4/Utilities;->sIconHeight:I

    if-ne v1, v3, :cond_1

    .line 391
    monitor-exit v2

    .line 394
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 393
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 394
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v1, p1}, Lcom/android/launcher4/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    monitor-exit v2

    goto :goto_0

    .line 384
    .end local v0    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static resizeHotseatIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    return-void
.end method

.method static resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 96
    sget v0, Lcom/android/launcher4/Utilities;->sIconTextureWidth:I

    sget v1, Lcom/android/launcher4/Utilities;->sIconTextureHeight:I

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    return-void
.end method

.method public static scaleRect(Landroid/graphics/Rect;F)V
    .locals 2
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 524
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 525
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 526
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 527
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 528
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 530
    :cond_0
    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    .locals 4
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .prologue
    .line 533
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 534
    .local v0, "cx":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 535
    .local v1, "cy":I
    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 536
    invoke-static {p0, p1}, Lcom/android/launcher4/Utilities;->scaleRect(Landroid/graphics/Rect;F)V

    .line 537
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 538
    return-void
.end method

.method public static setIconSize(I)V
    .locals 3
    .param p0, "widthPx"    # I

    .prologue
    .line 517
    sput p0, Lcom/android/launcher4/Utilities;->sIconWidth:I

    .line 518
    sget v0, Lcom/android/launcher4/Utilities;->sIconWidth:I

    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/android/launcher4/Utilities;->sIconHeight:I

    .line 519
    sget v0, Lcom/android/launcher4/Utilities;->sIconWidth:I

    sput v0, Lcom/android/launcher4/Utilities;->sIconTextureWidth:I

    .line 520
    sget v0, Lcom/android/launcher4/Utilities;->sIconHeight:I

    sput v0, Lcom/android/launcher4/Utilities;->sIconTextureHeight:I

    .line 521
    return-void
.end method

.method public static startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const v2, 0x7f0c000c

    const/4 v1, 0x0

    .line 543
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 557
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 546
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 547
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 549
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 550
    const-string v1, "Launcher.Utilities"

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launcher does not have the permission to launch "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 553
    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 554
    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 551
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
