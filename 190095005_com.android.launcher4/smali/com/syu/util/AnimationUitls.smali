.class public Lcom/syu/util/AnimationUitls;
.super Ljava/lang/Object;
.source "AnimationUitls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/util/AnimationUitls$MyFrame;,
        Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 139
    invoke-static {p0, p1, p2}, Lcom/syu/util/AnimationUitls;->animateRawManually(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 145
    invoke-static {p0, p1, p2, p3}, Lcom/syu/util/AnimationUitls;->animateRawManually(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V

    return-void
.end method

.method static synthetic access$2(Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 268
    invoke-static {p0, p1, p2, p3}, Lcom/syu/util/AnimationUitls;->animateDrawableManually(Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V

    return-void
.end method

.method private static animateDrawableManually(Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V
    .locals 7
    .param p0, "animationDrawable"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "onComplete"    # Ljava/lang/Runnable;
    .param p3, "frameNumber"    # I

    .prologue
    .line 272
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 273
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/syu/util/AnimationUitls$5;

    move-object v1, p1

    move v3, p3

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/syu/util/AnimationUitls$5;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/AnimationDrawable;Ljava/lang/Runnable;)V

    .line 292
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v1

    int-to-long v4, v1

    .line 274
    invoke-virtual {v6, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    return-void
.end method

.method public static animateManuallyFromRawResource(ILandroid/widget/ImageView;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 11
    .param p0, "animationDrawableResourceId"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "onStart"    # Ljava/lang/Runnable;
    .param p3, "onComplete"    # Ljava/lang/Runnable;
    .param p4, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 219
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 221
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 222
    invoke-virtual {v7, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 224
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    .line 225
    .local v3, "eventType":I
    :goto_0
    if-ne v3, v10, :cond_1

    .line 262
    if-eqz p2, :cond_0

    .line 263
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 265
    :cond_0
    invoke-static {v0, p1, p3, v9}, Lcom/syu/util/AnimationUitls;->animateDrawableManually(Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V

    .line 266
    return-void

    .line 226
    :cond_1
    if-eqz v3, :cond_2

    .line 228
    const/4 v7, 0x2

    if-ne v3, v7, :cond_6

    .line 230
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "item"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 231
    const/4 v2, 0x0

    .line 233
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v7

    if-lt v4, v7, :cond_3

    .line 250
    invoke-virtual {v0, v2, p4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 259
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "i":I
    :cond_2
    :goto_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto :goto_0

    .line 234
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "i":I
    :cond_3
    invoke-interface {v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 236
    invoke-interface {v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 235
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 238
    .local v6, "resId":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 239
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 237
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 240
    .local v1, "bytes":[B
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 241
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 243
    array-length v8, v1

    .line 242
    invoke-static {v1, v9, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 240
    invoke-direct {v2, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 233
    .end local v1    # "bytes":[B
    .end local v6    # "resId":I
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 244
    :cond_5
    invoke-interface {v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 245
    const-string v8, "duration"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 246
    const/16 v7, 0x42

    invoke-interface {v5, v4, v7}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result p4

    goto :goto_3

    .line 253
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "i":I
    :cond_6
    const/4 v7, 0x3

    if-eq v3, v7, :cond_2

    goto :goto_2
.end method

.method private static animateRawManually(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "onComplete"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/syu/util/AnimationUitls$MyFrame;",
            ">;",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "myFrames":Ljava/util/List;, "Ljava/util/List<Lcom/syu/util/AnimationUitls$MyFrame;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/syu/util/AnimationUitls;->animateRawManually(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V

    .line 142
    return-void
.end method

.method private static animateRawManually(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V
    .locals 8
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "onComplete"    # Ljava/lang/Runnable;
    .param p3, "frameNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/syu/util/AnimationUitls$MyFrame;",
            ">;",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Runnable;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, "myFrames":Ljava/util/List;, "Ljava/util/List<Lcom/syu/util/AnimationUitls$MyFrame;>;"
    const/4 v5, 0x0

    .line 148
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/syu/util/AnimationUitls$MyFrame;

    .line 150
    .local v2, "thisFrame":Lcom/syu/util/AnimationUitls$MyFrame;
    if-nez p3, :cond_1

    .line 151
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 153
    iget-object v3, v2, Lcom/syu/util/AnimationUitls$MyFrame;->bytes:[B

    iget-object v4, v2, Lcom/syu/util/AnimationUitls$MyFrame;->bytes:[B

    array-length v4, v4

    .line 152
    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 151
    iput-object v0, v2, Lcom/syu/util/AnimationUitls$MyFrame;->drawable:Landroid/graphics/drawable/Drawable;

    .line 161
    :goto_0
    iget-object v0, v2, Lcom/syu/util/AnimationUitls$MyFrame;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/syu/util/AnimationUitls$3;

    move-object v1, p1

    move v3, p3

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/syu/util/AnimationUitls$3;-><init>(Landroid/widget/ImageView;Lcom/syu/util/AnimationUitls$MyFrame;ILjava/util/List;Ljava/lang/Runnable;)V

    .line 185
    iget v1, v2, Lcom/syu/util/AnimationUitls$MyFrame;->duration:I

    int-to-long v4, v1

    .line 162
    invoke-virtual {v7, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/syu/util/AnimationUitls$4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/syu/util/AnimationUitls$4;-><init>(Ljava/util/List;ILandroid/widget/ImageView;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 206
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 208
    :cond_0
    return-void

    .line 155
    :cond_1
    add-int/lit8 v0, p3, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/syu/util/AnimationUitls$MyFrame;

    .line 156
    .local v6, "previousFrame":Lcom/syu/util/AnimationUitls$MyFrame;
    iget-object v0, v6, Lcom/syu/util/AnimationUitls$MyFrame;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/syu/util/AnimationUitls$MyFrame;->drawable:Landroid/graphics/drawable/Drawable;

    .line 158
    iput-boolean v5, v6, Lcom/syu/util/AnimationUitls$MyFrame;->isReady:Z

    goto :goto_0
.end method

.method public static animateRawManuallyFromXML(ILandroid/widget/ImageView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "resourceId"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "onStart"    # Ljava/lang/Runnable;
    .param p3, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/syu/util/AnimationUitls$1;

    invoke-direct {v1, p2, p1, p3}, Lcom/syu/util/AnimationUitls$1;-><init>(Ljava/lang/Runnable;Landroid/widget/ImageView;Ljava/lang/Runnable;)V

    .line 47
    invoke-static {p0, v0, v1}, Lcom/syu/util/AnimationUitls;->loadRaw(ILandroid/content/Context;Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;)V

    .line 57
    return-void
.end method

.method private static loadFromXml(ILandroid/content/Context;Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;)V
    .locals 2
    .param p0, "resourceId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onDrawableLoadedListener"    # Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;

    .prologue
    .line 69
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/syu/util/AnimationUitls$2;

    invoke-direct {v1, p1, p0, p2}, Lcom/syu/util/AnimationUitls$2;-><init>(Landroid/content/Context;ILcom/syu/util/AnimationUitls$OnDrawableLoadedListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 136
    return-void
.end method

.method private static loadRaw(ILandroid/content/Context;Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;)V
    .locals 0
    .param p0, "resourceId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onDrawableLoadedListener"    # Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lcom/syu/util/AnimationUitls;->loadFromXml(ILandroid/content/Context;Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;)V

    .line 63
    return-void
.end method
