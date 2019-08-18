.class Lcom/android/launcher4/Launcher$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcn/kuwo/autosdk/api/OnPlayerStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cn$kuwo$autosdk$api$PlayerStatus:[I


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method static synthetic $SWITCH_TABLE$cn$kuwo$autosdk$api$PlayerStatus()[I
    .locals 3

    .prologue
    .line 897
    sget-object v0, Lcom/android/launcher4/Launcher$3;->$SWITCH_TABLE$cn$kuwo$autosdk$api$PlayerStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/kuwo/autosdk/api/PlayerStatus;->values()[Lcn/kuwo/autosdk/api/PlayerStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcn/kuwo/autosdk/api/PlayerStatus;->BUFFERING:Lcn/kuwo/autosdk/api/PlayerStatus;

    invoke-virtual {v1}, Lcn/kuwo/autosdk/api/PlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcn/kuwo/autosdk/api/PlayerStatus;->INIT:Lcn/kuwo/autosdk/api/PlayerStatus;

    invoke-virtual {v1}, Lcn/kuwo/autosdk/api/PlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcn/kuwo/autosdk/api/PlayerStatus;->PAUSE:Lcn/kuwo/autosdk/api/PlayerStatus;

    invoke-virtual {v1}, Lcn/kuwo/autosdk/api/PlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcn/kuwo/autosdk/api/PlayerStatus;->PLAYING:Lcn/kuwo/autosdk/api/PlayerStatus;

    invoke-virtual {v1}, Lcn/kuwo/autosdk/api/PlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcn/kuwo/autosdk/api/PlayerStatus;->STOP:Lcn/kuwo/autosdk/api/PlayerStatus;

    invoke-virtual {v1}, Lcn/kuwo/autosdk/api/PlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/android/launcher4/Launcher$3;->$SWITCH_TABLE$cn$kuwo$autosdk$api$PlayerStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerStatus(Lcn/kuwo/autosdk/api/PlayerStatus;Lcn/kuwo/autosdk/bean/Music;)V
    .locals 4
    .param p1, "status"    # Lcn/kuwo/autosdk/api/PlayerStatus;
    .param p2, "music"    # Lcn/kuwo/autosdk/bean/Music;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 902
    if-eqz p1, :cond_0

    .line 903
    invoke-static {}, Lcom/android/launcher4/Launcher$3;->$SWITCH_TABLE$cn$kuwo$autosdk$api$PlayerStatus()[I

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/autosdk/api/PlayerStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 913
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v2, v0, Lcom/android/launcher4/Launcher;->mKwPlayState:Z

    .line 914
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v2, v0, Lcom/android/launcher4/Launcher;->showKuwoContent:Z

    .line 919
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$1(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 920
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher4/Launcher;->mKwPlayState:Z

    if-eqz v0, :cond_4

    .line 921
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$1(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;

    move-result-object v0

    .line 922
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->music_playpause_icon:I

    .line 921
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 928
    :cond_1
    :goto_1
    if-eqz p2, :cond_3

    .line 929
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$2(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 930
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher4/Launcher;->showKuwoContent:Z

    if-eqz v0, :cond_5

    .line 931
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$2(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcn/kuwo/autosdk/bean/Music;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$3(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 938
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher4/Launcher;->showKuwoContent:Z

    if-eqz v0, :cond_6

    .line 939
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$3(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcn/kuwo/autosdk/bean/Music;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    :cond_3
    :goto_3
    return-void

    .line 905
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v3, v0, Lcom/android/launcher4/Launcher;->mKwPlayState:Z

    .line 906
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v3, v0, Lcom/android/launcher4/Launcher;->showKuwoContent:Z

    goto :goto_0

    .line 909
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v2, v0, Lcom/android/launcher4/Launcher;->mKwPlayState:Z

    .line 910
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v3, v0, Lcom/android/launcher4/Launcher;->showKuwoContent:Z

    goto :goto_0

    .line 924
    :cond_4
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$1(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;

    move-result-object v0

    .line 925
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->music_pause_icon:I

    .line 924
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 933
    :cond_5
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$2(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 941
    :cond_6
    iget-object v0, p0, Lcom/android/launcher4/Launcher$3;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$3(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0084

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 903
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
