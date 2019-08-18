.class public abstract Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;
.super Ljava/lang/Object;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/WallpaperPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WallpaperTileInfo"
.end annotation


# instance fields
.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNamelessWallpaper()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 0
    .param p1, "a"    # Lcom/android/launcher4/WallpaperPickerActivity;

    .prologue
    .line 112
    return-void
.end method

.method public onDelete(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 0
    .param p1, "a"    # Lcom/android/launcher4/WallpaperPickerActivity;

    .prologue
    .line 114
    return-void
.end method

.method public onIndexUpdated(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;->isNamelessWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onSave(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 0
    .param p1, "a"    # Lcom/android/launcher4/WallpaperPickerActivity;

    .prologue
    .line 113
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;->mView:Landroid/view/View;

    .line 111
    return-void
.end method
