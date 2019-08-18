.class Lcom/android/photos/views/TiledImageRenderer$Tile;
.super Lcom/android/gallery3d/glrenderer/UploadedTexture;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field public mDecodedTile:Landroid/graphics/Bitmap;

.field public mNext:Lcom/android/photos/views/TiledImageRenderer$Tile;

.field public mTileLevel:I

.field public volatile mTileState:I

.field public mX:I

.field public mY:I

.field final synthetic this$0:Lcom/android/photos/views/TiledImageRenderer;


# direct methods
.method public constructor <init>(Lcom/android/photos/views/TiledImageRenderer;III)V
    .locals 1
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "level"    # I

    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;-><init>()V

    .line 669
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 672
    iput p2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    .line 673
    iput p3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    .line 674
    iput p4, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    .line 675
    return-void
.end method


# virtual methods
.method decode()Z
    .locals 6

    .prologue
    .line 686
    :try_start_0
    invoke-static {}, Lcom/android/photos/views/TiledImageRenderer;->access$0()Landroid/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 687
    .local v0, "reuse":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-static {v3}, Lcom/android/photos/views/TiledImageRenderer;->access$1(Lcom/android/photos/views/TiledImageRenderer;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 688
    const/4 v0, 0x0

    .line 690
    :cond_0
    iget-object v2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-static {v2}, Lcom/android/photos/views/TiledImageRenderer;->access$2(Lcom/android/photos/views/TiledImageRenderer;)Lcom/android/photos/views/TiledImageRenderer$TileSource;

    move-result-object v2

    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    iget v4, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    iget v5, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v0    # "reuse":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 691
    :catch_0
    move-exception v1

    .line 692
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "TiledImageRenderer"

    const-string v3, "fail to decode tile"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 694
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getParentTile()Lcom/android/photos/views/TiledImageRenderer$Tile;
    .locals 5

    .prologue
    .line 735
    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v4, v4, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    if-ne v3, v4, :cond_0

    .line 736
    const/4 v3, 0x0

    .line 741
    :goto_0
    return-object v3

    .line 738
    :cond_0
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-static {v3}, Lcom/android/photos/views/TiledImageRenderer;->access$1(Lcom/android/photos/views/TiledImageRenderer;)I

    move-result v3

    iget v4, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    shl-int v0, v3, v4

    .line 739
    .local v0, "size":I
    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    div-int/2addr v3, v0

    mul-int v1, v0, v3

    .line 740
    .local v1, "x":I
    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    div-int/2addr v3, v0

    mul-int v2, v0, v3

    .line 741
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v4, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v1, v2, v4}, Lcom/android/photos/views/TiledImageRenderer;->access$3(Lcom/android/photos/views/TiledImageRenderer;III)Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v3

    goto :goto_0
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-static {v0}, Lcom/android/photos/views/TiledImageRenderer;->access$1(Lcom/android/photos/views/TiledImageRenderer;)I

    move-result v0

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-static {v0}, Lcom/android/photos/views/TiledImageRenderer;->access$1(Lcom/android/photos/views/TiledImageRenderer;)I

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 679
    invoke-static {}, Lcom/android/photos/views/TiledImageRenderer;->access$0()Landroid/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 680
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 699
    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 703
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v3, v3, Lcom/android/photos/views/TiledImageRenderer;->mImageWidth:I

    iget v5, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    shr-int v2, v3, v5

    .line 704
    .local v2, "rightEdge":I
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v3, v3, Lcom/android/photos/views/TiledImageRenderer;->mImageHeight:I

    iget v5, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    shr-int v1, v3, v5

    .line 705
    .local v1, "bottomEdge":I
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-static {v3}, Lcom/android/photos/views/TiledImageRenderer;->access$1(Lcom/android/photos/views/TiledImageRenderer;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v5, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-static {v5}, Lcom/android/photos/views/TiledImageRenderer;->access$1(Lcom/android/photos/views/TiledImageRenderer;)I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/photos/views/TiledImageRenderer$Tile;->setSize(II)V

    .line 707
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 708
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 709
    iput v4, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 710
    return-object v0

    .line 699
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bottomEdge":I
    .end local v2    # "rightEdge":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 746
    const-string v0, "tile(%s, %s, %s / %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 747
    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    iget-object v4, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-static {v4}, Lcom/android/photos/views/TiledImageRenderer;->access$1(Lcom/android/photos/views/TiledImageRenderer;)I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    iget-object v4, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-static {v4}, Lcom/android/photos/views/TiledImageRenderer;->access$1(Lcom/android/photos/views/TiledImageRenderer;)I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-static {v3}, Lcom/android/photos/views/TiledImageRenderer;->access$4(Lcom/android/photos/views/TiledImageRenderer;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v3, v3, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 746
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 728
    iput p1, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    .line 729
    iput p2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    .line 730
    iput p3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    .line 731
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageRenderer$Tile;->invalidateContent()V

    .line 732
    return-void
.end method
