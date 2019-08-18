.class public Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;
.super Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;
.source "LiveWallpaperListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/LiveWallpaperListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveWallpaperTile"
.end annotation


# instance fields
.field private mInfo:Landroid/app/WallpaperInfo;

.field private mThumbnail:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/app/WallpaperInfo;Landroid/content/Intent;)V
    .locals 0
    .param p1, "thumbnail"    # Landroid/graphics/drawable/Drawable;
    .param p2, "info"    # Landroid/app/WallpaperInfo;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;->mThumbnail:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-object p2, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;->mInfo:Landroid/app/WallpaperInfo;

    .line 119
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;->mThumbnail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;)Landroid/app/WallpaperInfo;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;->mInfo:Landroid/app/WallpaperInfo;

    return-object v0
.end method


# virtual methods
.method public onClick(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 3
    .param p1, "a"    # Lcom/android/launcher4/WallpaperPickerActivity;

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "preview":Landroid/content/Intent;
    const-string v1, "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

    .line 124
    iget-object v2, p0, Lcom/android/launcher4/LiveWallpaperListAdapter$LiveWallpaperTile;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1}, Lcom/android/launcher4/WallpaperPickerActivity;->onLiveWallpaperPickerLaunch()V

    .line 127
    const/4 v1, 0x7

    .line 126
    invoke-static {p1, v0, v1}, Lcom/android/launcher4/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 128
    return-void
.end method
