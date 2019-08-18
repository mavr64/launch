.class Lcom/android/launcher4/Launcher$78;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$tag:Ljava/lang/Object;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$78;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$78;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher4/Launcher$78;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/launcher4/Launcher$78;->val$tag:Ljava/lang/Object;

    .line 6527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6533
    const-string v0, "hy"

    const-string v1, "carlifeACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6534
    const-string v0, "carlifeACTION"

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 6535
    iget-object v0, p0, Lcom/android/launcher4/Launcher$78;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$78;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Launcher$78;->val$v:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher4/Launcher$78;->val$intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/launcher4/Launcher$78;->val$tag:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher4/Launcher;->start(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher4/Launcher;->success:Z

    .line 6536
    return-void
.end method
