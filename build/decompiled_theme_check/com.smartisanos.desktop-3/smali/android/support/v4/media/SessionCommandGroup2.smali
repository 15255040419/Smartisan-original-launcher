.class public final Landroid/support/v4/media/SessionCommandGroup2;
.super Ljava/lang/Object;
.source "SessionCommandGroup2.java"


# static fields
.field private static final KEY_COMMANDS:Ljava/lang/String; = "android.media.mediasession2.commandgroup.commands"

.field private static final PREFIX_COMMAND_CODE:Ljava/lang/String; = "COMMAND_CODE_"

.field private static final PREFIX_COMMAND_CODE_PLAYBACK:Ljava/lang/String; = "COMMAND_CODE_PLAYBACK_"

.field private static final PREFIX_COMMAND_CODE_PLAYLIST:Ljava/lang/String; = "COMMAND_CODE_PLAYLIST_"

.field private static final PREFIX_COMMAND_CODE_VOLUME:Ljava/lang/String; = "COMMAND_CODE_VOLUME_"

.field private static final TAG:Ljava/lang/String; = "SessionCommandGroup2"


# instance fields
.field private mCommands:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/SessionCommandGroup2;->mCommands:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/SessionCommandGroup2;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/SessionCommandGroup2;->mCommands:Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 5
    iget-object p0, p0, Landroid/support/v4/media/SessionCommandGroup2;->mCommands:Ljava/util/Set;

    iget-object p1, p1, Landroid/support/v4/media/SessionCommandGroup2;->mCommands:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private addCommandsWithPrefix(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class v0, Landroid/support/v4/media/SessionCommand2;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    .line 4
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "COMMAND_CODE_CUSTOM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/SessionCommandGroup2;->mCommands:Ljava/util/Set;

    new-instance v3, Landroid/support/v4/media/SessionCommand2;

    aget-object v4, v0, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/support/v4/media/SessionCommand2;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in MediaSession2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SessionCommandGroup2"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommandGroup2;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.media.mediasession2.commandgroup.commands"

    .line 1
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Landroid/support/v4/media/SessionCommandGroup2;

    invoke-direct {v0}, Landroid/support/v4/media/SessionCommandGroup2;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 5
    instance-of v3, v2, Landroid/os/Bundle;

    if-nez v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    check-cast v2, Landroid/os/Bundle;

    .line 7
    invoke-static {v2}, Landroid/support/v4/media/SessionCommand2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionCommand2;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v0, v2}, Landroid/support/v4/media/SessionCommandGroup2;->addCommand(Landroid/support/v4/media/SessionCommand2;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method addAllPlaybackCommands()V
    .locals 1

    const-string v0, "COMMAND_CODE_PLAYBACK_"

    .line 1
    invoke-direct {p0, v0}, Landroid/support/v4/media/SessionCommandGroup2;->addCommandsWithPrefix(Ljava/lang/String;)V

    return-void
.end method

.method addAllPlaylistCommands()V
    .locals 1

    const-string v0, "COMMAND_CODE_PLAYLIST_"

    .line 1
    invoke-direct {p0, v0}, Landroid/support/v4/media/SessionCommandGroup2;->addCommandsWithPrefix(Ljava/lang/String;)V

    return-void
.end method

.method public addAllPredefinedCommands()V
    .locals 1

    const-string v0, "COMMAND_CODE_"

    .line 1
    invoke-direct {p0, v0}, Landroid/support/v4/media/SessionCommandGroup2;->addCommandsWithPrefix(Ljava/lang/String;)V

    return-void
.end method

.method addAllVolumeCommands()V
    .locals 1

    const-string v0, "COMMAND_CODE_VOLUME_"

    .line 1
    invoke-direct {p0, v0}, Landroid/support/v4/media/SessionCommandGroup2;->addCommandsWithPrefix(Ljava/lang/String;)V

    return-void
.end method

.method public addCommand(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/SessionCommandGroup2;->mCommands:Ljava/util/Set;

    new-instance v0, Landroid/support/v4/media/SessionCommand2;

    invoke-direct {v0, p1}, Landroid/support/v4/media/SessionCommand2;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "command shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addCommand(Landroid/support/v4/media/SessionCommand2;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionCommandGroup2;->mCommands:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "command shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCommands()Ljava/util/Set;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Landroid/support/v4/media/SessionCommandGroup2;->mCommands:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasCommand(I)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/SessionCommandGroup2;->mCommands:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/SessionCommand2;

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/media/SessionCommand2;->getCommandCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Use hasCommand(Command) for custom command"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasCommand(Landroid/support/v4/media/SessionCommand2;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionCommandGroup2;->mCommands:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "command shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeCommand(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/SessionCommandGroup2;->mCommands:Ljava/util/Set;

    new-instance v0, Landroid/support/v4/media/SessionCommand2;

    invoke-direct {v0, p1}, Landroid/support/v4/media/SessionCommand2;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "commandCode shouldn\'t be COMMAND_CODE_CUSTOM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeCommand(Landroid/support/v4/media/SessionCommand2;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/SessionCommandGroup2;->mCommands:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "command shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p0, p0, Landroid/support/v4/media/SessionCommandGroup2;->mCommands:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/SessionCommand2;

    .line 3
    invoke-virtual {v1}, Landroid/support/v4/media/SessionCommand2;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.media.mediasession2.commandgroup.commands"

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method
