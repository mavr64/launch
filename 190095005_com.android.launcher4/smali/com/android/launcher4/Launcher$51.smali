.class Lcom/android/launcher4/Launcher$51;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->initViews()V
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$51;->this$0:Lcom/android/launcher4/Launcher;

    .line 3763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 3767
    iget-object v0, p0, Lcom/android/launcher4/Launcher$51;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$51;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$90(Lcom/android/launcher4/Launcher;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/launcher4/Launcher;->access$91(Lcom/android/launcher4/Launcher;J)V

    .line 3768
    iget-object v0, p0, Lcom/android/launcher4/Launcher$51;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/launcher4/Launcher;->access$92(Lcom/android/launcher4/Launcher;J)V

    .line 3769
    iget-object v0, p0, Lcom/android/launcher4/Launcher$51;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$90(Lcom/android/launcher4/Launcher;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher4/Launcher$51;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v2}, Lcom/android/launcher4/Launcher;->access$93(Lcom/android/launcher4/Launcher;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 3770
    iget-object v0, p0, Lcom/android/launcher4/Launcher$51;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$94(Lcom/android/launcher4/Launcher;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$95(Lcom/android/launcher4/Launcher;I)V

    .line 3771
    iget-object v0, p0, Lcom/android/launcher4/Launcher$51;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$94(Lcom/android/launcher4/Launcher;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 3772
    iget-object v0, p0, Lcom/android/launcher4/Launcher$51;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0, v4}, Lcom/android/launcher4/Launcher;->access$95(Lcom/android/launcher4/Launcher;I)V

    .line 3773
    iget-object v0, p0, Lcom/android/launcher4/Launcher$51;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0, v6, v7}, Lcom/android/launcher4/Launcher;->access$92(Lcom/android/launcher4/Launcher;J)V

    .line 3774
    iget-object v0, p0, Lcom/android/launcher4/Launcher$51;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0, v6, v7}, Lcom/android/launcher4/Launcher;->access$91(Lcom/android/launcher4/Launcher;J)V

    .line 3775
    iget-object v0, p0, Lcom/android/launcher4/Launcher$51;->this$0:Lcom/android/launcher4/Launcher;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/launcher4/Launcher;->sp:I

    .line 3776
    iget-object v0, p0, Lcom/android/launcher4/Launcher$51;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$96(Lcom/android/launcher4/Launcher;)V

    .line 3781
    :cond_0
    :goto_0
    return-void

    .line 3779
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher$51;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0, v4}, Lcom/android/launcher4/Launcher;->access$95(Lcom/android/launcher4/Launcher;I)V

    goto :goto_0
.end method
