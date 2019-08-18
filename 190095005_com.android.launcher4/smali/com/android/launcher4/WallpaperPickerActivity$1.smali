.class Lcom/android/launcher4/WallpaperPickerActivity$1;
.super Ljava/lang/Object;
.source "WallpaperPickerActivity.java"

# interfaces
.implements Lcom/android/launcher4/CropView$TouchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/WallpaperPickerActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mAnim:Lcom/android/launcher4/LauncherViewPropertyAnimator;

.field final synthetic this$0:Lcom/android/launcher4/WallpaperPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/WallpaperPickerActivity$1;)Lcom/android/launcher4/WallpaperPickerActivity;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    return-object v0
.end method


# virtual methods
.method public onTap()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v1}, Lcom/android/launcher4/WallpaperPickerActivity;->access$4(Lcom/android/launcher4/WallpaperPickerActivity;)Z

    move-result v0

    .line 277
    .local v0, "ignoreTap":Z
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v1, v2}, Lcom/android/launcher4/WallpaperPickerActivity;->access$3(Lcom/android/launcher4/WallpaperPickerActivity;Z)V

    .line 278
    if-nez v0, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->mAnim:Lcom/android/launcher4/LauncherViewPropertyAnimator;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->mAnim:Lcom/android/launcher4/LauncherViewPropertyAnimator;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->cancel()V

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v1}, Lcom/android/launcher4/WallpaperPickerActivity;->access$2(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    new-instance v1, Lcom/android/launcher4/LauncherViewPropertyAnimator;

    iget-object v2, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v2}, Lcom/android/launcher4/WallpaperPickerActivity;->access$2(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher4/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->mAnim:Lcom/android/launcher4/LauncherViewPropertyAnimator;

    .line 284
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->mAnim:Lcom/android/launcher4/LauncherViewPropertyAnimator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-result-object v1

    .line 285
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 286
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 287
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->mAnim:Lcom/android/launcher4/LauncherViewPropertyAnimator;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->start()V

    .line 289
    :cond_1
    return-void
.end method

.method public onTouchDown()V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->mAnim:Lcom/android/launcher4/LauncherViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->mAnim:Lcom/android/launcher4/LauncherViewPropertyAnimator;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->cancel()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v0}, Lcom/android/launcher4/WallpaperPickerActivity;->access$2(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity;->access$3(Lcom/android/launcher4/WallpaperPickerActivity;Z)V

    .line 256
    :cond_1
    new-instance v0, Lcom/android/launcher4/LauncherViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v1}, Lcom/android/launcher4/WallpaperPickerActivity;->access$2(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher4/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->mAnim:Lcom/android/launcher4/LauncherViewPropertyAnimator;

    .line 257
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->mAnim:Lcom/android/launcher4/LauncherViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-result-object v0

    .line 258
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/android/launcher4/WallpaperPickerActivity$1$1;

    invoke-direct {v1, p0}, Lcom/android/launcher4/WallpaperPickerActivity$1$1;-><init>(Lcom/android/launcher4/WallpaperPickerActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 267
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->mAnim:Lcom/android/launcher4/LauncherViewPropertyAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 268
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->mAnim:Lcom/android/launcher4/LauncherViewPropertyAnimator;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->start()V

    .line 269
    return-void
.end method

.method public onTouchUp()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity$1;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity;->access$3(Lcom/android/launcher4/WallpaperPickerActivity;Z)V

    .line 273
    return-void
.end method
