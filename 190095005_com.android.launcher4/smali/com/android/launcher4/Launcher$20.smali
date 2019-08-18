.class Lcom/android/launcher4/Launcher$20;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->checkForLocaleChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/launcher4/Launcher$LocaleConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$20;->this$0:Lcom/android/launcher4/Launcher;

    .line 1026
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/launcher4/Launcher$LocaleConfiguration;
    .locals 2
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 1029
    new-instance v0, Lcom/android/launcher4/Launcher$LocaleConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher4/Launcher$LocaleConfiguration;-><init>(Lcom/android/launcher4/Launcher$LocaleConfiguration;)V

    .line 1030
    .local v0, "localeConfiguration":Lcom/android/launcher4/Launcher$LocaleConfiguration;
    iget-object v1, p0, Lcom/android/launcher4/Launcher$20;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher4/Launcher;->access$77(Landroid/content/Context;Lcom/android/launcher4/Launcher$LocaleConfiguration;)V

    .line 1031
    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher$20;->doInBackground([Ljava/lang/Void;)Lcom/android/launcher4/Launcher$LocaleConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/launcher4/Launcher$LocaleConfiguration;)V
    .locals 1
    .param p1, "result"    # Lcom/android/launcher4/Launcher$LocaleConfiguration;

    .prologue
    .line 1036
    invoke-static {p1}, Lcom/android/launcher4/Launcher;->access$78(Lcom/android/launcher4/Launcher$LocaleConfiguration;)V

    .line 1037
    iget-object v0, p0, Lcom/android/launcher4/Launcher$20;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$79(Lcom/android/launcher4/Launcher;)V

    .line 1039
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher4/Launcher$LocaleConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/launcher4/Launcher$20;->onPostExecute(Lcom/android/launcher4/Launcher$LocaleConfiguration;)V

    return-void
.end method
