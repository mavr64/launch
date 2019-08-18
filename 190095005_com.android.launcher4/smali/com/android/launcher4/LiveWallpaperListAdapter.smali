.class public Lcom/android/launcher4/LiveWallpaperListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LiveWallpaperListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;,
        Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LiveWallpaperListAdapter"


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mWallpapers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/launcher4/LiveWallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 60
    iget-object v1, p0, Lcom/android/launcher4/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    const/16 v3, 0x80

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    .line 66
    new-instance v1, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;-><init>(Lcom/android/launcher4/LiveWallpaperListAdapter;Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void
.end method

.method static synthetic access$1(Lcom/android/launcher4/LiveWallpaperListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher4/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher4/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher4/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher4/LiveWallpaperListAdapter;->getItem(I)Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 87
    if-nez p2, :cond_0

    .line 88
    iget-object v5, p0, Lcom/android/launcher4/LiveWallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040034

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .local v3, "view":Landroid/view/View;
    :goto_0
    move-object v5, v3

    .line 93
    check-cast v5, Landroid/widget/FrameLayout;

    invoke-static {v5}, Lcom/android/launcher4/WallpaperPickerActivity;->setWallpaperItemPaddingToZero(Landroid/widget/FrameLayout;)V

    .line 95
    iget-object v5, p0, Lcom/android/launcher4/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;

    .line 96
    .local v4, "wallpaperInfo":Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;
    invoke-virtual {v4, v3}, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;->setView(Landroid/view/View;)V

    .line 97
    const v5, 0x7f110096

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 98
    .local v1, "image":Landroid/widget/ImageView;
    const v5, 0x7f110098

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;->access$0(Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 100
    invoke-static {v4}, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;->access$0(Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :goto_1
    const v5, 0x7f110097

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 108
    .local v2, "label":Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;->access$1(Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;)Landroid/app/WallpaperInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher4/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-object v3

    .line 90
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "image":Landroid/widget/ImageView;
    .end local v2    # "label":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "wallpaperInfo":Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;
    :cond_0
    move-object v3, p2

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_0

    .line 103
    .restart local v0    # "icon":Landroid/widget/ImageView;
    .restart local v1    # "image":Landroid/widget/ImageView;
    .restart local v4    # "wallpaperInfo":Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;
    :cond_1
    invoke-static {v4}, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;->access$1(Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;)Landroid/app/WallpaperInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher4/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/app/WallpaperInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
