.class public Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;
.super Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/WallpaperPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceWallpaperInfo"
.end annotation


# instance fields
.field private mResId:I

.field private mResources:Landroid/content/res/Resources;

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;->mResources:Landroid/content/res/Resources;

    .line 176
    iput p2, p0, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;->mResId:I

    .line 177
    iput-object p3, p0, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 178
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public isNamelessWallpaper()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 10
    .param p1, "a"    # Lcom/android/launcher4/WallpaperPickerActivity;

    .prologue
    const/4 v9, 0x0

    .line 181
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;->mResources:Landroid/content/res/Resources;

    iget v2, p0, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;->mResId:I

    invoke-static {v1, v2}, Lcom/android/launcher4/WallpaperCropActivity;->getRotationFromExif(Landroid/content/res/Resources;I)I

    move-result v5

    .line 182
    .local v5, "rotation":I
    new-instance v0, Lcom/android/photos/BitmapRegionTileSource;

    .line 183
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;->mResources:Landroid/content/res/Resources;

    iget v3, p0, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;->mResId:I

    const/16 v4, 0x400

    move-object v2, p1

    .line 182
    invoke-direct/range {v0 .. v5}, Lcom/android/photos/BitmapRegionTileSource;-><init>(Landroid/content/res/Resources;Landroid/content/Context;III)V

    .line 184
    .local v0, "source":Lcom/android/photos/BitmapRegionTileSource;
    invoke-virtual {p1}, Lcom/android/launcher4/WallpaperPickerActivity;->getCropView()Lcom/android/launcher4/CropView;

    move-result-object v7

    .line 185
    .local v7, "v":Lcom/android/launcher4/CropView;
    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher4/CropView;->setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V

    .line 187
    invoke-virtual {p1}, Lcom/android/launcher4/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher4/WallpaperPickerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 186
    invoke-static {v1, v2}, Lcom/android/launcher4/WallpaperCropActivity;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v8

    .line 189
    .local v8, "wallpaperSize":Landroid/graphics/Point;
    invoke-virtual {v0}, Lcom/android/photos/BitmapRegionTileSource;->getImageWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/photos/BitmapRegionTileSource;->getImageHeight()I

    move-result v2

    .line 190
    iget v3, v8, Landroid/graphics/Point;->x:I

    iget v4, v8, Landroid/graphics/Point;->y:I

    .line 188
    invoke-static {v1, v2, v3, v4, v9}, Lcom/android/launcher4/WallpaperCropActivity;->getMaxCropRect(IIIIZ)Landroid/graphics/RectF;

    move-result-object v6

    .line 192
    .local v6, "crop":Landroid/graphics/RectF;
    invoke-virtual {v7, v9}, Lcom/android/launcher4/CropView;->setTouchEnabled(Z)V

    .line 193
    return-void
.end method

.method public onSave(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 3
    .param p1, "a"    # Lcom/android/launcher4/WallpaperPickerActivity;

    .prologue
    .line 196
    const/4 v0, 0x1

    .line 197
    .local v0, "finishActivityWhenDone":Z
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;->mResources:Landroid/content/res/Resources;

    iget v2, p0, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;->mResId:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/launcher4/WallpaperPickerActivity;->cropImageAndSetWallpaper(Landroid/content/res/Resources;IZ)V

    .line 198
    return-void
.end method
