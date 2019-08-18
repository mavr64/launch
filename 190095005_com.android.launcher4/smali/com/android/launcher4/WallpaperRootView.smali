.class public Lcom/android/launcher4/WallpaperRootView;
.super Landroid/widget/RelativeLayout;
.source "WallpaperRootView.java"


# instance fields
.field private final a:Lcom/android/launcher4/WallpaperPickerActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    check-cast p1, Lcom/android/launcher4/WallpaperPickerActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher4/WallpaperRootView;->a:Lcom/android/launcher4/WallpaperPickerActivity;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    check-cast p1, Lcom/android/launcher4/WallpaperPickerActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher4/WallpaperRootView;->a:Lcom/android/launcher4/WallpaperPickerActivity;

    .line 33
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher4/WallpaperRootView;->a:Lcom/android/launcher4/WallpaperPickerActivity;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity;->setWallpaperStripYOffset(F)V

    .line 37
    const/4 v0, 0x1

    return v0
.end method
