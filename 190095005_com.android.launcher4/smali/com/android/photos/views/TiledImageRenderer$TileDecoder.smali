.class Lcom/android/photos/views/TiledImageRenderer$TileDecoder;
.super Ljava/lang/Thread;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/views/TiledImageRenderer;


# direct methods
.method private constructor <init>(Lcom/android/photos/views/TiledImageRenderer;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/photos/views/TiledImageRenderer;Lcom/android/photos/views/TiledImageRenderer$TileDecoder;)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;-><init>(Lcom/android/photos/views/TiledImageRenderer;)V

    return-void
.end method

.method private waitForTile()Lcom/android/photos/views/TiledImageRenderer$Tile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 801
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-static {v1}, Lcom/android/photos/views/TiledImageRenderer;->access$5(Lcom/android/photos/views/TiledImageRenderer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 803
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-static {v1}, Lcom/android/photos/views/TiledImageRenderer;->access$6(Lcom/android/photos/views/TiledImageRenderer;)Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->pop()Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    .line 804
    .local v0, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    if-eqz v0, :cond_0

    .line 805
    monitor-exit v2

    return-object v0

    .line 807
    :cond_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-static {v1}, Lcom/android/photos/views/TiledImageRenderer;->access$5(Lcom/android/photos/views/TiledImageRenderer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 801
    .end local v0    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public finishAndWait()V
    .locals 3

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->interrupt()V

    .line 794
    :try_start_0
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "TiledImageRenderer"

    const-string v2, "Interrupted while waiting for TileDecoder thread to finish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 815
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    :goto_1
    return-void

    .line 816
    :cond_0
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->waitForTile()Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    .line 817
    .local v0, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-static {v1, v0}, Lcom/android/photos/views/TiledImageRenderer;->access$7(Lcom/android/photos/views/TiledImageRenderer;Lcom/android/photos/views/TiledImageRenderer$Tile;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 819
    .end local v0    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
