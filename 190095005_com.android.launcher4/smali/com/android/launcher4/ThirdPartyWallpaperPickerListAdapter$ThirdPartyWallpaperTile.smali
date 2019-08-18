.class public Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;
.super Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;
.source "ThirdPartyWallpaperPickerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThirdPartyWallpaperTile"
.end annotation


# instance fields
.field private mResolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;)Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method


# virtual methods
.method public onClick(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 4
    .param p1, "a"    # Lcom/android/launcher4/WallpaperPickerActivity;

    .prologue
    .line 55
    new-instance v0, Landroid/content/ComponentName;

    .line 56
    iget-object v2, p0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 55
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v0, "itemComponentName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    const/4 v2, 0x6

    .line 59
    invoke-static {p1, v1, v2}, Lcom/android/launcher4/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 61
    return-void
.end method
