.class Lcom/android/launcher4/Launcher$93;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$newScreenIndex:I

.field private final synthetic val$startBounceAnimRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;ILjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$93;->this$0:Lcom/android/launcher4/Launcher;

    iput p2, p0, Lcom/android/launcher4/Launcher$93;->val$newScreenIndex:I

    iput-object p3, p0, Lcom/android/launcher4/Launcher$93;->val$startBounceAnimRunnable:Ljava/lang/Runnable;

    .line 8438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 8440
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$0()Lcom/android/launcher4/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/Launcher$93;->val$newScreenIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->snapToPage(I)V

    .line 8441
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$0()Lcom/android/launcher4/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/Launcher$93;->val$startBounceAnimRunnable:Ljava/lang/Runnable;

    .line 8442
    invoke-static {}, Lcom/android/launcher4/Launcher;->access$113()I

    move-result v2

    int-to-long v2, v2

    .line 8441
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher4/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8443
    return-void
.end method
