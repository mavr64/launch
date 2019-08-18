.class Lcom/android/launcher4/Launcher$22;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->active_launcher(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$22;->this$0:Lcom/android/launcher4/Launcher;

    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1246
    sget v2, Lcom/android/launcher4/Launcher;->bsp_recv:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1261
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/Launcher$22;->this$0:Lcom/android/launcher4/Launcher;

    const-string v3, ""

    iput-object v3, v2, Lcom/android/launcher4/Launcher;->str_toast:Ljava/lang/String;

    .line 1249
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1251
    .local v1, "outparamkey":Landroid/os/Bundle;
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 1253
    const/16 v3, 0x72

    .line 1254
    const/4 v4, 0x0

    .line 1252
    invoke-virtual {v2, v3, v4, v1}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1255
    .local v0, "key_recv":I
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 1256
    const-string v2, "activekey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/launcher4/Launcher;->activekey:I

    .line 1257
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " --*--*-- BSP recv   activekey = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1258
    sget v3, Lcom/android/launcher4/Launcher;->activekey:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  key_recv = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1259
    const-string v3, "  activestep = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher4/Launcher$22;->this$0:Lcom/android/launcher4/Launcher;

    iget-boolean v3, v3, Lcom/android/launcher4/Launcher;->activestep:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 1260
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/launcher4/Launcher$ThreadWL;

    iget-object v4, p0, Lcom/android/launcher4/Launcher$22;->this$0:Lcom/android/launcher4/Launcher;

    invoke-direct {v3, v4}, Lcom/android/launcher4/Launcher$ThreadWL;-><init>(Lcom/android/launcher4/Launcher;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
