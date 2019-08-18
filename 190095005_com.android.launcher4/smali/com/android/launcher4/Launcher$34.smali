.class Lcom/android/launcher4/Launcher$34;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->adasLeft()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$34;->this$0:Lcom/android/launcher4/Launcher;

    .line 2449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2451
    invoke-static {}, Lcom/syu/util/Print;->getPrint()Lcom/syu/util/Print;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adasLeft -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher4/Launcher$34;->this$0:Lcom/android/launcher4/Launcher;

    iget-boolean v2, v2, Lcom/android/launcher4/Launcher;->isAnimaStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/util/Print;->d(Ljava/lang/String;)V

    .line 2452
    iget-object v0, p0, Lcom/android/launcher4/Launcher$34;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$34;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$22(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$24(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    .line 2453
    iget-object v0, p0, Lcom/android/launcher4/Launcher$34;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$22(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020494

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2454
    iget-object v0, p0, Lcom/android/launcher4/Launcher$34;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$34;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$83(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$25(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    .line 2455
    sget v0, Lcom/syu/car/CarStates;->mSmallLight:I

    if-eqz v0, :cond_0

    .line 2456
    iget-object v0, p0, Lcom/android/launcher4/Launcher$34;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$34;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$23(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$25(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    .line 2458
    :cond_0
    return-void
.end method
