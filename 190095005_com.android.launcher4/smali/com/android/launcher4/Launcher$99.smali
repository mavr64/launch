.class Lcom/android/launcher4/Launcher$99;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$appInfos:Ljava/util/ArrayList;

.field private final synthetic val$packageNames:Ljava/util/ArrayList;

.field private final synthetic val$packageRemoved:Z


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$99;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$99;->val$packageNames:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher4/Launcher$99;->val$appInfos:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/android/launcher4/Launcher$99;->val$packageRemoved:Z

    .line 8668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 8670
    iget-object v0, p0, Lcom/android/launcher4/Launcher$99;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$99;->val$packageNames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher4/Launcher$99;->val$appInfos:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/android/launcher4/Launcher$99;->val$packageRemoved:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher4/Launcher;->bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 8671
    return-void
.end method
