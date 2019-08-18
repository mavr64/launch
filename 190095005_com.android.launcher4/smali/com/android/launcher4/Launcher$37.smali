.class Lcom/android/launcher4/Launcher$37;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->adasRight()V
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$37;->this$0:Lcom/android/launcher4/Launcher;

    .line 2482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/android/launcher4/Launcher$37;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$37;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$83(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$24(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    .line 2486
    iget-object v0, p0, Lcom/android/launcher4/Launcher$37;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$37;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$22(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$25(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    .line 2487
    iget-object v0, p0, Lcom/android/launcher4/Launcher$37;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$89(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020492

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2488
    sget v0, Lcom/syu/car/CarStates;->mSmallLight:I

    if-eqz v0, :cond_0

    .line 2489
    iget-object v0, p0, Lcom/android/launcher4/Launcher$37;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$23(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2491
    :cond_0
    return-void
.end method
