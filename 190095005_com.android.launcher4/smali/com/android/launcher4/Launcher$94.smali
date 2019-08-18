.class Lcom/android/launcher4/Launcher$94;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->bindFolders(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$folders:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$94;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$94;->val$folders:Ljava/util/HashMap;

    .line 8458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8460
    iget-object v0, p0, Lcom/android/launcher4/Launcher$94;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$94;->val$folders:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->bindFolders(Ljava/util/HashMap;)V

    .line 8461
    return-void
.end method
