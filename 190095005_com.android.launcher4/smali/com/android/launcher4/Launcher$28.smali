.class Lcom/android/launcher4/Launcher$28;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->end10s()V
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$28;->this$0:Lcom/android/launcher4/Launcher;

    .line 2321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2323
    iget-object v0, p0, Lcom/android/launcher4/Launcher$28;->this$0:Lcom/android/launcher4/Launcher;

    iget v0, v0, Lcom/android/launcher4/Launcher;->carSpeed:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 2324
    iget-object v0, p0, Lcom/android/launcher4/Launcher$28;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v3, v0, Lcom/android/launcher4/Launcher;->isAnimaStart:Z

    .line 2325
    sget v0, Lcom/syu/car/CarStates;->mSmallLight:I

    if-nez v0, :cond_1

    .line 2326
    iget-object v0, p0, Lcom/android/launcher4/Launcher$28;->this$0:Lcom/android/launcher4/Launcher;

    const v1, 0x7f050006

    invoke-static {v0, v1, v3}, Lcom/android/launcher4/Launcher;->access$84(Lcom/android/launcher4/Launcher;IZ)V

    .line 2331
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher$28;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v3, v0, Lcom/android/launcher4/Launcher;->isInEnd:Z

    .line 2332
    return-void

    .line 2328
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher$28;->this$0:Lcom/android/launcher4/Launcher;

    const v1, 0x7f050007

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher4/Launcher;->access$84(Lcom/android/launcher4/Launcher;IZ)V

    goto :goto_0
.end method
