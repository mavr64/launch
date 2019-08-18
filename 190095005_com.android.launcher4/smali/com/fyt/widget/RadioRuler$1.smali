.class Lcom/fyt/widget/RadioRuler$1;
.super Landroid/os/Handler;
.source "RadioRuler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyt/widget/RadioRuler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyt/widget/RadioRuler;


# direct methods
.method constructor <init>(Lcom/fyt/widget/RadioRuler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fyt/widget/RadioRuler$1;->this$0:Lcom/fyt/widget/RadioRuler;

    .line 29
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 32
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/fyt/widget/RadioRuler$1;->this$0:Lcom/fyt/widget/RadioRuler;

    invoke-virtual {v0}, Lcom/fyt/widget/RadioRuler;->isAnimEnd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/fyt/widget/RadioRuler$1;->this$0:Lcom/fyt/widget/RadioRuler;

    invoke-virtual {v0}, Lcom/fyt/widget/RadioRuler;->doAnim()V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyt/widget/RadioRuler$1;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/fyt/widget/RadioRuler$1;->this$0:Lcom/fyt/widget/RadioRuler;

    invoke-virtual {v0}, Lcom/fyt/widget/RadioRuler;->setToTarget()V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
