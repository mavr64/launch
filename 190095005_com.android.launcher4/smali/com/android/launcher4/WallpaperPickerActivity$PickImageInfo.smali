.class public Lcom/android/launcher4/WallpaperPickerActivity$PickImageInfo;
.super Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/WallpaperPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PickImageInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 2
    .param p1, "a"    # Lcom/android/launcher4/WallpaperPickerActivity;

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcom/android/launcher4/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 130
    return-void
.end method
