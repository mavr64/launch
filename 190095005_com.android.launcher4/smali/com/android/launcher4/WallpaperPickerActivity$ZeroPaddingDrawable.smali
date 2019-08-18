.class Lcom/android/launcher4/WallpaperPickerActivity$ZeroPaddingDrawable;
.super Landroid/graphics/drawable/LevelListDrawable;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/WallpaperPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZeroPaddingDrawable"
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 833
    invoke-direct {p0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .line 834
    invoke-virtual {p0, v0, v0, p1}, Lcom/android/launcher4/WallpaperPickerActivity$ZeroPaddingDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 835
    invoke-virtual {p0, v0}, Lcom/android/launcher4/WallpaperPickerActivity$ZeroPaddingDrawable;->setLevel(I)Z

    .line 836
    return-void
.end method


# virtual methods
.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 840
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 841
    const/4 v0, 0x1

    return v0
.end method
