.class Lcom/android/launcher4/Launcher$4;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Launcher;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$4;->this$0:Lcom/android/launcher4/Launcher;

    .line 1293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1295
    iget-object v0, p0, Lcom/android/launcher4/Launcher$4;->this$0:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/Launcher$4;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, v1, Lcom/android/launcher4/Launcher;->str_toast:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1296
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1297
    iget-object v0, p0, Lcom/android/launcher4/Launcher$4;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v2, v0, Lcom/android/launcher4/Launcher;->activestep:Z

    .line 1298
    return-void
.end method
