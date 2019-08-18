.class Lcom/android/launcher4/LauncherApplication$2;
.super Ljava/lang/Object;
.source "LauncherApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherApplication;->loadCarLogo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherApplication$2;->this$0:Lcom/android/launcher4/LauncherApplication;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/syu/logo/CarLogoDialogFragment;->carLogoData:Ljava/util/ArrayList;

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/launcher4/LauncherApplication$2;->this$0:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logo_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/launcher4/LauncherApplication$2;->this$0:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher4/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 197
    .local v1, "logoId":I
    :goto_0
    if-nez v1, :cond_0

    .line 203
    return-void

    .line 198
    :cond_0
    sget-object v2, Lcom/syu/logo/CarLogoDialogFragment;->carLogoData:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v0, v0, 0x1

    .line 200
    iget-object v2, p0, Lcom/android/launcher4/LauncherApplication$2;->this$0:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logo_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/launcher4/LauncherApplication$2;->this$0:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher4/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
