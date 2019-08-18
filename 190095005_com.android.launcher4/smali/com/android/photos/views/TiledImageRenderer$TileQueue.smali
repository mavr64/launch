.class Lcom/android/photos/views/TiledImageRenderer$TileQueue;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/photos/views/TiledImageRenderer$TileQueue;)V
    .locals 0

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;-><init>()V

    return-void
.end method

.method private contains(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z
    .locals 2
    .param p1, "tile"    # Lcom/android/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 775
    .local v0, "other":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :goto_0
    if-nez v0, :cond_0

    .line 781
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 776
    :cond_0
    if-ne v0, p1, :cond_1

    .line 777
    const/4 v1, 0x1

    goto :goto_1

    .line 779
    :cond_1
    iget-object v0, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mNext:Lcom/android/photos/views/TiledImageRenderer$Tile;

    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 786
    return-void
.end method

.method public pop()Lcom/android/photos/views/TiledImageRenderer$Tile;
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 756
    .local v0, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    if-eqz v0, :cond_0

    .line 757
    iget-object v1, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mNext:Lcom/android/photos/views/TiledImageRenderer$Tile;

    iput-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 759
    :cond_0
    return-object v0
.end method

.method public push(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z
    .locals 3
    .param p1, "tile"    # Lcom/android/photos/views/TiledImageRenderer$Tile;

    .prologue
    const/4 v0, 0x0

    .line 763
    invoke-direct {p0, p1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->contains(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    const-string v1, "TiledImageRenderer"

    const-string v2, "Attempting to add a tile already in the queue!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :goto_0
    return v0

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 768
    .local v0, "wasEmpty":Z
    :cond_1
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    iput-object v1, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mNext:Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 769
    iput-object p1, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    goto :goto_0
.end method
