.class Lcom/android/launcher4/Launcher$91;
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

.field private final synthetic val$end:I

.field private final synthetic val$forceAnimateIcons:Z

.field private final synthetic val$shortcuts:Ljava/util/ArrayList;

.field private final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Ljava/util/ArrayList;IIZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$91;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$91;->val$shortcuts:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/launcher4/Launcher$91;->val$start:I

    iput p4, p0, Lcom/android/launcher4/Launcher$91;->val$end:I

    iput-boolean p5, p0, Lcom/android/launcher4/Launcher$91;->val$forceAnimateIcons:Z

    .line 8344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 8346
    iget-object v0, p0, Lcom/android/launcher4/Launcher$91;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$91;->val$shortcuts:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher4/Launcher$91;->val$start:I

    iget v3, p0, Lcom/android/launcher4/Launcher$91;->val$end:I

    iget-boolean v4, p0, Lcom/android/launcher4/Launcher$91;->val$forceAnimateIcons:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher4/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 8347
    return-void
.end method
