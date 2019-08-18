.class public Lcom/android/launcher4/LauncherAnimUtils;
.super Ljava/lang/Object;
.source "LauncherAnimUtils.java"


# static fields
.field static sAnimators:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field static sEndAnimListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/launcher4/LauncherAnimUtils;->sAnimators:Ljava/util/HashSet;

    .line 31
    new-instance v0, Lcom/android/launcher4/LauncherAnimUtils$1;

    invoke-direct {v0}, Lcom/android/launcher4/LauncherAnimUtils$1;-><init>()V

    sput-object v0, Lcom/android/launcher4/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelOnDestroyActivity(Landroid/animation/Animator;)V
    .locals 1
    .param p0, "a"    # Landroid/animation/Animator;

    .prologue
    .line 49
    sget-object v0, Lcom/android/launcher4/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 50
    return-void
.end method

.method public static createAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 89
    .local v0, "anim":Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/launcher4/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 90
    return-object v0
.end method

.method public static varargs ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p0, "target"    # Landroid/view/View;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 101
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 102
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 105
    invoke-static {v0}, Lcom/android/launcher4/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 106
    new-instance v1, Lcom/android/launcher4/FirstFrameAnimatorHelper;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher4/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 107
    return-object v0
.end method

.method public static varargs ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "target"    # Landroid/view/View;
    .param p1, "values"    # [F

    .prologue
    .line 94
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 95
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 96
    invoke-static {v0}, Lcom/android/launcher4/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 97
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p0, "target"    # Landroid/view/View;
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 112
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 113
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 115
    invoke-static {v0}, Lcom/android/launcher4/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 116
    new-instance v1, Lcom/android/launcher4/FirstFrameAnimatorHelper;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher4/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 117
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 122
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 123
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 125
    invoke-static {v0}, Lcom/android/launcher4/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 126
    new-instance v1, Lcom/android/launcher4/FirstFrameAnimatorHelper;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher4/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 127
    return-object v0
.end method

.method public static onDestroyActivity()V
    .locals 4

    .prologue
    .line 77
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lcom/android/launcher4/LauncherAnimUtils;->sAnimators:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 78
    .local v1, "animators":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    return-void

    .line 78
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 79
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 82
    :cond_1
    sget-object v3, Lcom/android/launcher4/LauncherAnimUtils;->sAnimators:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static startAnimationAfterNextDraw(Landroid/animation/Animator;Landroid/view/View;)V
    .locals 2
    .param p0, "animator"    # Landroid/animation/Animator;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher4/LauncherAnimUtils$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher4/LauncherAnimUtils$2;-><init>(Landroid/animation/Animator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 74
    return-void
.end method
