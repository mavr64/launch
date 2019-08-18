.class Lcom/android/launcher4/WallpaperPickerActivity$1$1;
.super Ljava/lang/Object;
.source "WallpaperPickerActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/WallpaperPickerActivity$1;->onTouchDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/WallpaperPickerActivity$1;


# direct methods
.method constructor <init>(Lcom/android/launcher4/WallpaperPickerActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/WallpaperPickerActivity$1$1;->this$1:Lcom/android/launcher4/WallpaperPickerActivity$1;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 264
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$1$1;->this$1:Lcom/android/launcher4/WallpaperPickerActivity$1;

    invoke-static {v0}, Lcom/android/launcher4/WallpaperPickerActivity$1;->access$0(Lcom/android/launcher4/WallpaperPickerActivity$1;)Lcom/android/launcher4/WallpaperPickerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/WallpaperPickerActivity;->access$2(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 265
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 260
    return-void
.end method
