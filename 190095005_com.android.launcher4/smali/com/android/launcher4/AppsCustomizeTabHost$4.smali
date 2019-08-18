.class Lcom/android/launcher4/AppsCustomizeTabHost$4;
.super Ljava/lang/Object;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/AppsCustomizeTabHost;->alphaAnmi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/AppsCustomizeTabHost;


# direct methods
.method constructor <init>(Lcom/android/launcher4/AppsCustomizeTabHost;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/AppsCustomizeTabHost$4;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v3, 0x0

    .line 510
    const/high16 v2, 0x437f0000    # 255.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 511
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizeTabHost$4;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher4/AppsCustomizeTabHost;->setBackgroundColor(I)V

    .line 512
    return-void
.end method
