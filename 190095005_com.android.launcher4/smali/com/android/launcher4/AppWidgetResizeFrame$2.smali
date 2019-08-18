.class Lcom/android/launcher4/AppWidgetResizeFrame$2;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/AppWidgetResizeFrame;->snapToWidget(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lcom/android/launcher4/AppWidgetResizeFrame;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/AppWidgetResizeFrame$2;->this$0:Lcom/android/launcher4/AppWidgetResizeFrame;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame$2;->this$0:Lcom/android/launcher4/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher4/AppWidgetResizeFrame;->requestLayout()V

    .line 454
    return-void
.end method
