.class Lcom/syu/util/AnimationUitls$2;
.super Ljava/lang/Object;
.source "AnimationUitls.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/util/AnimationUitls;->loadFromXml(ILandroid/content/Context;Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$onDrawableLoadedListener:Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;

.field private final synthetic val$resourceId:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/syu/util/AnimationUitls$OnDrawableLoadedListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/util/AnimationUitls$2;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/syu/util/AnimationUitls$2;->val$resourceId:I

    iput-object p3, p0, Lcom/syu/util/AnimationUitls$2;->val$onDrawableLoadedListener:Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 72
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v7, "myFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/syu/util/AnimationUitls$MyFrame;>;"
    iget-object v10, p0, Lcom/syu/util/AnimationUitls$2;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 75
    iget v11, p0, Lcom/syu/util/AnimationUitls$2;->val$resourceId:I

    .line 74
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 78
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 79
    .local v4, "eventType":I
    :goto_0
    if-ne v4, v12, :cond_0

    .line 126
    .end local v4    # "eventType":I
    :goto_1
    new-instance v10, Landroid/os/Handler;

    iget-object v11, p0, Lcom/syu/util/AnimationUitls$2;->val$context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v11, Lcom/syu/util/AnimationUitls$2$1;

    iget-object v12, p0, Lcom/syu/util/AnimationUitls$2;->val$onDrawableLoadedListener:Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;

    invoke-direct {v11, p0, v12, v7}, Lcom/syu/util/AnimationUitls$2$1;-><init>(Lcom/syu/util/AnimationUitls$2;Lcom/syu/util/AnimationUitls$OnDrawableLoadedListener;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void

    .line 80
    .restart local v4    # "eventType":I
    :cond_0
    if-eqz v4, :cond_1

    .line 82
    const/4 v10, 0x2

    if-ne v4, v10, :cond_5

    .line 84
    :try_start_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "item"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "bytes":[B
    const/16 v1, 0x3e8

    .line 88
    .local v1, "duration":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v10

    if-lt v5, v10, :cond_2

    .line 104
    new-instance v6, Lcom/syu/util/AnimationUitls$MyFrame;

    invoke-direct {v6}, Lcom/syu/util/AnimationUitls$MyFrame;-><init>()V

    .line 105
    .local v6, "myFrame":Lcom/syu/util/AnimationUitls$MyFrame;
    iput-object v0, v6, Lcom/syu/util/AnimationUitls$MyFrame;->bytes:[B

    .line 106
    iput v1, v6, Lcom/syu/util/AnimationUitls$MyFrame;->duration:I

    .line 107
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v0    # "bytes":[B
    .end local v1    # "duration":I
    .end local v5    # "i":I
    .end local v6    # "myFrame":Lcom/syu/util/AnimationUitls$MyFrame;
    :cond_1
    :goto_3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    goto :goto_0

    .line 89
    .restart local v0    # "bytes":[B
    .restart local v1    # "duration":I
    .restart local v5    # "i":I
    :cond_2
    invoke-interface {v8, v5}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    .line 90
    const-string v11, "drawable"

    .line 89
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 90
    if-eqz v10, :cond_4

    .line 92
    invoke-interface {v8, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 93
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 91
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 94
    .local v9, "resId":I
    iget-object v10, p0, Lcom/syu/util/AnimationUitls$2;->val$context:Landroid/content/Context;

    .line 95
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 96
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 94
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 88
    .end local v9    # "resId":I
    :cond_3
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 97
    :cond_4
    invoke-interface {v8, v5}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    .line 98
    const-string v11, "duration"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 100
    const/16 v10, 0x3e8

    .line 99
    invoke-interface {v8, v5, v10}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_4

    .line 110
    .end local v0    # "bytes":[B
    .end local v1    # "duration":I
    .end local v5    # "i":I
    :cond_5
    const/4 v10, 0x3

    if-eq v4, v10, :cond_1

    goto :goto_3

    .line 118
    .end local v4    # "eventType":I
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 120
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 122
    .local v3, "e2":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_1
.end method
