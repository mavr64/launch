.class Lcom/android/launcher4/Launcher$38;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->startAnimation(I)V
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$38;->this$0:Lcom/android/launcher4/Launcher;

    .line 2494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/launcher4/Launcher$38;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$38;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$82(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$25(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    .line 2497
    iget-object v0, p0, Lcom/android/launcher4/Launcher$38;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$38;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$21(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$24(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    .line 2498
    return-void
.end method
