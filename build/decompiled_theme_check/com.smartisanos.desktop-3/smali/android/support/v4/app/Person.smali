.class public Landroid/support/v4/app/Person;
.super Ljava/lang/Object;
.source "Person.java"


# static fields
.field private static final ICON_KEY:Ljava/lang/String; = "icon"

.field private static final IS_BOT_KEY:Ljava/lang/String; = "isBot"

.field private static final IS_IMPORTANT_KEY:Ljava/lang/String; = "isImportant"

.field private static final KEY_KEY:Ljava/lang/String; = "key"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final URI_KEY:Ljava/lang/String; = "uri"


# instance fields
.field private mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

.field private mIsBot:Z

.field private mIsImportant:Z

.field private mKey:Ljava/lang/String;

.field private mName:Ljava/lang/CharSequence;

.field private mUri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/Person$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/support/v4/app/Person$Builder;->access$000(Landroid/support/v4/app/Person$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Person;->mName:Ljava/lang/CharSequence;

    .line 4
    invoke-static {p1}, Landroid/support/v4/app/Person$Builder;->access$100(Landroid/support/v4/app/Person$Builder;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Person;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    .line 5
    invoke-static {p1}, Landroid/support/v4/app/Person$Builder;->access$200(Landroid/support/v4/app/Person$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Person;->mUri:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/support/v4/app/Person$Builder;->access$300(Landroid/support/v4/app/Person$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Person;->mKey:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Landroid/support/v4/app/Person$Builder;->access$400(Landroid/support/v4/app/Person$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/Person;->mIsBot:Z

    .line 8
    invoke-static {p1}, Landroid/support/v4/app/Person$Builder;->access$500(Landroid/support/v4/app/Person$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v4/app/Person;->mIsImportant:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/Person$Builder;Landroid/support/v4/app/Person$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/app/Person;-><init>(Landroid/support/v4/app/Person$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/support/v4/app/Person;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/Person;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/support/v4/app/Person;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v4/app/Person;->mIsBot:Z

    return p0
.end method

.method static synthetic access$1200(Landroid/support/v4/app/Person;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v4/app/Person;->mIsImportant:Z

    return p0
.end method

.method static synthetic access$700(Landroid/support/v4/app/Person;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/Person;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Landroid/support/v4/app/Person;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/Person;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    return-object p0
.end method

.method static synthetic access$900(Landroid/support/v4/app/Person;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/Person;->mUri:Ljava/lang/String;

    return-object p0
.end method

.method public static fromAndroidPerson(Landroid/app/Person;)Landroid/support/v4/app/Person;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/app/Person$Builder;

    invoke-direct {v0}, Landroid/support/v4/app/Person$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Person$Builder;->setIcon(Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/app/Person;->isBot()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Person$Builder;->setBot(Z)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/app/Person;->isImportant()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/Person$Builder;->setImportant(Z)Landroid/support/v4/app/Person$Builder;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/support/v4/app/Person$Builder;->build()Landroid/support/v4/app/Person;

    move-result-object p0

    return-object p0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/Person;
    .locals 3

    const-string v0, "icon"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/support/v4/app/Person$Builder;

    invoke-direct {v1}, Landroid/support/v4/app/Person$Builder;-><init>()V

    const-string v2, "name"

    .line 3
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/support/v4/app/Person$Builder;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromBundle(Landroid/os/Bundle;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Person$Builder;->setIcon(Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    const-string v1, "uri"

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    const-string v1, "key"

    .line 6
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    const-string v1, "isBot"

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Person$Builder;->setBot(Z)Landroid/support/v4/app/Person$Builder;

    move-result-object v0

    const-string v1, "isImportant"

    .line 8
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/Person$Builder;->setImportant(Z)Landroid/support/v4/app/Person$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/support/v4/app/Person$Builder;->build()Landroid/support/v4/app/Person;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIcon()Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/Person;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/Person;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/Person;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/Person;->mUri:Ljava/lang/String;

    return-object p0
.end method

.method public isBot()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v4/app/Person;->mIsBot:Z

    return p0
.end method

.method public isImportant()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v4/app/Person;->mIsImportant:Z

    return p0
.end method

.method public toAndroidPerson()Landroid/app/Person;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Person;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Person;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/app/Person;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/app/Person;->isBot()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/app/Person;->isImportant()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Landroid/support/v4/app/Person$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/app/Person$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/Person$Builder;-><init>(Landroid/support/v4/app/Person;Landroid/support/v4/app/Person$1;)V

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/support/v4/app/Person;->mName:Ljava/lang/CharSequence;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Landroid/support/v4/app/Person;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/graphics/drawable/IconCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    iget-object v1, p0, Landroid/support/v4/app/Person;->mUri:Ljava/lang/String;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Landroid/support/v4/app/Person;->mKey:Ljava/lang/String;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Landroid/support/v4/app/Person;->mIsBot:Z

    const-string v2, "isBot"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    iget-boolean p0, p0, Landroid/support/v4/app/Person;->mIsImportant:Z

    const-string v1, "isImportant"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
