.class Lcom/android/launcher4/Launcher$98;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->bindAppsUpdated(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$apps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$98;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$98;->val$apps:Ljava/util/ArrayList;

    .line 8638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8640
    iget-object v0, p0, Lcom/android/launcher4/Launcher$98;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$98;->val$apps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->bindAppsUpdated(Ljava/util/ArrayList;)V

    .line 8641
    return-void
.end method
