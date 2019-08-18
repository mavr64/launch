.class Lcom/android/launcher4/Launcher$41;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->endAnimation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$light:Z


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$41;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher4/Launcher$41;->val$light:Z

    .line 2514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2516
    iget-object v0, p0, Lcom/android/launcher4/Launcher$41;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v1, v0, Lcom/android/launcher4/Launcher;->isAnimaStart:Z

    .line 2517
    iget-object v0, p0, Lcom/android/launcher4/Launcher$41;->this$0:Lcom/android/launcher4/Launcher;

    iput v1, v0, Lcom/android/launcher4/Launcher;->isRoadRun:I

    .line 2518
    iget-boolean v0, p0, Lcom/android/launcher4/Launcher$41;->val$light:Z

    if-eqz v0, :cond_0

    .line 2519
    iget-object v0, p0, Lcom/android/launcher4/Launcher$41;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$21(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2522
    :goto_0
    return-void

    .line 2521
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher$41;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$21(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
