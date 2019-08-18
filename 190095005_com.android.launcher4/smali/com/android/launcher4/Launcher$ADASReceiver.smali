.class Lcom/android/launcher4/Launcher$ADASReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ADASReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 2527
    iput-object p1, p0, Lcom/android/launcher4/Launcher$ADASReceiver;->this$0:Lcom/android/launcher4/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Launcher$ADASReceiver;)V
    .locals 0

    .prologue
    .line 2527
    invoke-direct {p0, p1}, Lcom/android/launcher4/Launcher$ADASReceiver;-><init>(Lcom/android/launcher4/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 2530
    const-string v0, "\u6536\u5230\u5e7f\u64ad\uff1aaction.syncamera.adas.result"

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 2531
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adasResult = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "adasResult"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 2532
    const-string v0, "adasResult"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2548
    :goto_0
    :pswitch_0
    return-void

    .line 2534
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher$ADASReceiver;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$65(Lcom/android/launcher4/Launcher;)V

    goto :goto_0

    .line 2537
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher4/Launcher$ADASReceiver;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$66(Lcom/android/launcher4/Launcher;)V

    goto :goto_0

    .line 2540
    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher4/Launcher$ADASReceiver;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$67(Lcom/android/launcher4/Launcher;)V

    goto :goto_0

    .line 2543
    :pswitch_4
    iget-object v0, p0, Lcom/android/launcher4/Launcher$ADASReceiver;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$68(Lcom/android/launcher4/Launcher;)V

    goto :goto_0

    .line 2532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
