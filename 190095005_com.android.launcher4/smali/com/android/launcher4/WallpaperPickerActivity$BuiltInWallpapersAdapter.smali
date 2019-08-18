.class Lcom/android/launcher4/WallpaperPickerActivity$BuiltInWallpapersAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperPickerActivity.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/WallpaperPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuiltInWallpapersAdapter"
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mWallpapers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 849
    .local p2, "wallpapers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 850
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$BuiltInWallpapersAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 851
    iput-object p2, p0, Lcom/android/launcher4/WallpaperPickerActivity$BuiltInWallpapersAdapter;->mWallpapers:Ljava/util/ArrayList;

    .line 852
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$BuiltInWallpapersAdapter;->mWallpapers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$BuiltInWallpapersAdapter;->mWallpapers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher4/WallpaperPickerActivity$BuiltInWallpapersAdapter;->getItem(I)Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 863
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 867
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$BuiltInWallpapersAdapter;->mWallpapers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;

    invoke-static {v1}, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;->access$0(Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 868
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 869
    const-string v1, "Launcher.WallpaperPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error decoding thumbnail for wallpaper #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$BuiltInWallpapersAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {v1, p1, p2, p3, v0}, Lcom/android/launcher4/WallpaperPickerActivity;->createImageTileView(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
