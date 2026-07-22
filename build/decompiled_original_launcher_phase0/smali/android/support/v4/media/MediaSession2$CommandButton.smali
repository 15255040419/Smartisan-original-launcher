.class public final Landroid/support/v4/media/MediaSession2$CommandButton;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# static fields
.field private static final KEY_COMMAND:Ljava/lang/String; = "android.media.media_session2.command_button.command"

.field private static final KEY_DISPLAY_NAME:Ljava/lang/String; = "android.media.media_session2.command_button.display_name"

.field private static final KEY_ENABLED:Ljava/lang/String; = "android.media.media_session2.command_button.enabled"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "android.media.media_session2.command_button.extras"

.field private static final KEY_ICON_RES_ID:Ljava/lang/String; = "android.media.media_session2.command_button.icon_res_id"


# instance fields
.field private mCommand:Landroid/support/v4/media/SessionCommand2;

.field private mDisplayName:Ljava/lang/String;

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mIconResId:I


# direct methods
.method private constructor <init>(Landroid/support/v4/media/SessionCommand2;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mCommand:Landroid/support/v4/media/SessionCommand2;

    .line 4
    iput p2, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mIconResId:I

    .line 5
    iput-object p3, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mDisplayName:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mExtras:Landroid/os/Bundle;

    .line 7
    iput-boolean p5, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/SessionCommand2;ILjava/lang/String;Landroid/os/Bundle;ZLandroid/support/v4/media/MediaSession2$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/media/MediaSession2$CommandButton;-><init>(Landroid/support/v4/media/SessionCommand2;ILjava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaSession2$CommandButton;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Landroid/support/v4/media/MediaSession2$CommandButton$Builder;

    invoke-direct {v1}, Landroid/support/v4/media/MediaSession2$CommandButton$Builder;-><init>()V

    const-string v2, "android.media.media_session2.command_button.command"

    .line 2
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/media/SessionCommand2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommand2;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaSession2$CommandButton$Builder;->setCommand(Landroid/support/v4/media/SessionCommand2;)Landroid/support/v4/media/MediaSession2$CommandButton$Builder;

    const/4 v2, 0x0

    const-string v3, "android.media.media_session2.command_button.icon_res_id"

    .line 3
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaSession2$CommandButton$Builder;->setIconResId(I)Landroid/support/v4/media/MediaSession2$CommandButton$Builder;

    const-string v2, "android.media.media_session2.command_button.display_name"

    .line 4
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaSession2$CommandButton$Builder;->setDisplayName(Ljava/lang/String;)Landroid/support/v4/media/MediaSession2$CommandButton$Builder;

    const-string v2, "android.media.media_session2.command_button.extras"

    .line 5
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaSession2$CommandButton$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaSession2$CommandButton$Builder;

    const-string v2, "android.media.media_session2.command_button.enabled"

    .line 6
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroid/support/v4/media/MediaSession2$CommandButton$Builder;->setEnabled(Z)Landroid/support/v4/media/MediaSession2$CommandButton$Builder;

    .line 7
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/media/MediaSession2$CommandButton$Builder;->build()Landroid/support/v4/media/MediaSession2$CommandButton;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public getCommand()Landroid/support/v4/media/SessionCommand2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mCommand:Landroid/support/v4/media/SessionCommand2;

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public getIconResId()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mIconResId:I

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mEnabled:Z

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mCommand:Landroid/support/v4/media/SessionCommand2;

    invoke-virtual {v1}, Landroid/support/v4/media/SessionCommand2;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.media.media_session2.command_button.command"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3
    iget v1, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mIconResId:I

    const-string v2, "android.media.media_session2.command_button.icon_res_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mDisplayName:Ljava/lang/String;

    const-string v2, "android.media.media_session2.command_button.display_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mExtras:Landroid/os/Bundle;

    const-string v2, "android.media.media_session2.command_button.extras"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    iget-boolean p0, p0, Landroid/support/v4/media/MediaSession2$CommandButton;->mEnabled:Z

    const-string v1, "android.media.media_session2.command_button.enabled"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
