.class Lcom/android/launcher4/WallpaperCropActivity$5;
.super Ljava/lang/Thread;
.source "WallpaperCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/WallpaperCropActivity;->suggestWallpaperDimension(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$defaultWallpaperSize:Landroid/graphics/Point;

.field private final synthetic val$sharedPrefs:Landroid/content/SharedPreferences;

.field private final synthetic val$wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/graphics/Point;Landroid/app/WallpaperManager;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p2, p0, Lcom/android/launcher4/WallpaperCropActivity$5;->val$sharedPrefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/android/launcher4/WallpaperCropActivity$5;->val$defaultWallpaperSize:Landroid/graphics/Point;

    iput-object p4, p0, Lcom/android/launcher4/WallpaperCropActivity$5;->val$wallpaperManager:Landroid/app/WallpaperManager;

    .line 750
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 753
    iget-object v2, p0, Lcom/android/launcher4/WallpaperCropActivity$5;->val$sharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "wallpaper.width"

    .line 754
    iget-object v4, p0, Lcom/android/launcher4/WallpaperCropActivity$5;->val$defaultWallpaperSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 753
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 755
    .local v1, "savedWidth":I
    iget-object v2, p0, Lcom/android/launcher4/WallpaperCropActivity$5;->val$sharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "wallpaper.height"

    .line 756
    iget-object v4, p0, Lcom/android/launcher4/WallpaperCropActivity$5;->val$defaultWallpaperSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 755
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 757
    .local v0, "savedHeight":I
    iget-object v2, p0, Lcom/android/launcher4/WallpaperCropActivity$5;->val$wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v1, v0}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 759
    return-void
.end method
