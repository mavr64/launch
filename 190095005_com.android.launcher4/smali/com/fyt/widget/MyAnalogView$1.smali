.class Lcom/fyt/widget/MyAnalogView$1;
.super Ljava/lang/Object;
.source "MyAnalogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyt/widget/MyAnalogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyt/widget/MyAnalogView;


# direct methods
.method constructor <init>(Lcom/fyt/widget/MyAnalogView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fyt/widget/MyAnalogView$1;->this$0:Lcom/fyt/widget/MyAnalogView;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fyt/widget/MyAnalogView$1;->this$0:Lcom/fyt/widget/MyAnalogView;

    invoke-virtual {v0}, Lcom/fyt/widget/MyAnalogView;->postInvalidate()V

    .line 92
    iget-object v0, p0, Lcom/fyt/widget/MyAnalogView$1;->this$0:Lcom/fyt/widget/MyAnalogView;

    iget-object v0, v0, Lcom/fyt/widget/MyAnalogView;->tickHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fyt/widget/MyAnalogView$1;->this$0:Lcom/fyt/widget/MyAnalogView;

    invoke-static {v1}, Lcom/fyt/widget/MyAnalogView;->access$0(Lcom/fyt/widget/MyAnalogView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void
.end method
