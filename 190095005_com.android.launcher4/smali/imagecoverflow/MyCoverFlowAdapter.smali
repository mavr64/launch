.class public Limagecoverflow/MyCoverFlowAdapter;
.super Limagecoverflow/CoverFlowAdapter;
.source "MyCoverFlowAdapter.java"


# instance fields
.field private dataChanged:Z

.field private image1:Landroid/graphics/Bitmap;

.field private image2:Landroid/graphics/Bitmap;

.field private imgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Limagecoverflow/CoverFlowAdapter;-><init>()V

    .line 47
    iput-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->image1:Landroid/graphics/Bitmap;

    .line 49
    iput-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->image2:Landroid/graphics/Bitmap;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->imgList:Ljava/util/ArrayList;

    .line 29
    iget-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->imgList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->com_syu_radio:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->imgList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->com_syu_bt_btact:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->imgList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->com_syu_onekeynavi:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->imgList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->com_syu_music:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->imgList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->com_syu_settings:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->imgList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->com_syu_video:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->imgList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->com_syu_car:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->imgList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->com_syu_dvr:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->imgList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->com_syu_voice_voicelaunch:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->imgList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->net_easyconn:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method


# virtual methods
.method public changeBitmap()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Limagecoverflow/MyCoverFlowAdapter;->dataChanged:Z

    .line 44
    invoke-virtual {p0}, Limagecoverflow/MyCoverFlowAdapter;->notifyDataSetChanged()V

    .line 45
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->imgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Limagecoverflow/MyCoverFlowAdapter;->imgList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method
