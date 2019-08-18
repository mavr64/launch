.class Lcom/android/launcher4/Launcher$29;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->roadRun(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$29;->this$0:Lcom/android/launcher4/Launcher;

    iput p2, p0, Lcom/android/launcher4/Launcher$29;->val$id:I

    .line 2366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2368
    iget v0, p0, Lcom/android/launcher4/Launcher$29;->val$id:I

    iget-object v1, p0, Lcom/android/launcher4/Launcher$29;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$85(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/syu/util/AnimationUitls;->animateRawManuallyFromXML(ILandroid/widget/ImageView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2369
    return-void
.end method
