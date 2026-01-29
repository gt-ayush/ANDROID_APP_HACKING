.class public Lcom/withsecure/example/sieve/activity/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;
.implements Lcom/withsecure/example/sieve/util/NetBackupHandler$ResultListener;


# static fields
.field private static final BACKUP_FILENAME:Ljava/lang/String; = "Backup"

.field private static final BACKUP_TO_NET:I = 0xfc0b

.field private static final BACKUP_TO_SD:I = 0x983

.field public static final FILE:I = 0x125

.field private static final NO:Ljava/lang/String; = "Cancel"

.field private static final NOT_RUNNING:I = 0xcbbfc

.field public static final PIN_REQUEST:I = 0x1c8

.field private static final TAG:Ljava/lang/String; = "m_Settings"

.field private static final YES:Ljava/lang/String; = "Yes"

.field private static final writeable:I = 0x1


# instance fields
.field private PIN:Ljava/lang/String;

.field backupNet:Landroid/app/AlertDialog$Builder;

.field backupSD:Landroid/app/AlertDialog$Builder;

.field private connectionError:Landroid/app/AlertDialog$Builder;

.field deleteALL:Landroid/app/AlertDialog$Builder;

.field errorCantChangePin:Landroid/app/AlertDialog$Builder;

.field errorCantRead:Landroid/app/AlertDialog$Builder;

.field errorDBEmpty:Landroid/app/AlertDialog$Builder;

.field private ll:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/withsecure/example/sieve/util/PasswordEntry;",
            ">;"
        }
    .end annotation
.end field

.field private netBackup:Lcom/withsecure/example/sieve/util/NetBackupHandler;

.field netRestore:Landroid/app/AlertDialog$Builder;

.field private out:Ljava/lang/StringBuffer;

.field restore:Landroid/app/AlertDialog$Builder;

.field private runningState:I

.field private serviceConnection:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    invoke-direct {v0, p0}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;-><init>(Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    .line 66
    const v0, 0xcbbfc

    iput v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->runningState:I

    .line 67
    return-void
.end method

.method private backupToNet()V
    .locals 2

    .line 71
    iget v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->runningState:I

    const v1, 0xcbbfc

    if-ne v0, v1, :cond_0

    .line 72
    const v0, 0xfc0b

    iput v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->runningState:I

    .line 73
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getBackup()V

    .line 75
    :cond_0
    return-void
.end method

.method private backupToSD()V
    .locals 2

    .line 83
    iget v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->runningState:I

    const v1, 0xcbbfc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->checkSDState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/16 v0, 0x983

    iput v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->runningState:I

    .line 85
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getBackup()V

    .line 87
    :cond_0
    return-void
.end method

.method private changePIN(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pin"    # Ljava/lang/String;

    .line 94
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v0, "out":Landroid/content/ContentValues;
    const-string v1, "pin"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->PIN:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 97
    .local v2, "arr_s":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/withsecure/example/sieve/provider/DBContentProvider;->KEYS_URI:Landroid/net/Uri;

    const-string v6, "pin = ?"

    invoke-virtual {v3, v5, v0, v6, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private checkSDState(I)Z
    .locals 2
    .param p1, "code"    # I

    .line 112
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private deleteAll()V
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/withsecure/example/sieve/provider/DBContentProvider;->PASSWORDS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Database deleted"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    return-void
.end method

.method private finaliseBackupToSD()V
    .locals 5

    .line 140
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Backup (2023-11-01 11-39-55.364).xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 146
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 147
    .local v1, "os":Ljava/io/FileOutputStream;
    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->out:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 148
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 149
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Database exported"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ERROR: Unable to write to file"

    const-string v3, "m_Settings"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private finaliseEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->ll:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/withsecure/example/sieve/util/PasswordEntry;

    .line 159
    .local v0, "pe":Lcom/withsecure/example/sieve/util/PasswordEntry;
    iput-object p1, v0, Lcom/withsecure/example/sieve/util/PasswordEntry;->password:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->out:Ljava/lang/StringBuffer;

    invoke-static {v0}, Lcom/withsecure/example/sieve/database/DBParser;->processElement(Lcom/withsecure/example/sieve/util/PasswordEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->ll:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->finaliseOutput()V

    .line 164
    :cond_0
    return-void
.end method

.method private finaliseInsert([B)V
    .locals 4
    .param p1, "password"    # [B

    .line 167
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->ll:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/withsecure/example/sieve/util/PasswordEntry;

    .line 168
    .local v0, "pe":Lcom/withsecure/example/sieve/util/PasswordEntry;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v1, "out":Landroid/content/ContentValues;
    const-string/jumbo v2, "service"

    iget-object v3, v0, Lcom/withsecure/example/sieve/util/PasswordEntry;->service:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v2, "username"

    iget-object v3, v0, Lcom/withsecure/example/sieve/util/PasswordEntry;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v2, "password"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 172
    const-string v2, "email"

    iget-object v3, v0, Lcom/withsecure/example/sieve/util/PasswordEntry;->email:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/withsecure/example/sieve/provider/DBContentProvider;->PASSWORDS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 174
    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->ll:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->finaliseRestore()V

    .line 177
    :cond_0
    return-void
.end method

.method private finaliseOutput()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->out:Ljava/lang/StringBuffer;

    const-string v1, "</Passwords>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    iget v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->runningState:I

    const v1, 0xcbbfc

    sparse-switch v0, :sswitch_data_0

    .line 193
    iput v1, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->runningState:I

    .line 196
    return-void

    .line 188
    :sswitch_0
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->netBackup:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->out:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->performNetBackup(Ljava/lang/String;)V

    .line 189
    iput v1, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->runningState:I

    .line 190
    return-void

    .line 183
    :sswitch_1
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->finaliseBackupToSD()V

    .line 184
    iput v1, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->runningState:I

    .line 185
    return-void

    :sswitch_data_0
    .sparse-switch
        0x983 -> :sswitch_1
        0xfc0b -> :sswitch_0
    .end sparse-switch
.end method

.method private finaliseRestore()V
    .locals 3

    .line 199
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Database Restored"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/MainLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 201
    return-void
.end method

.method private getBackup()V
    .locals 13

    .line 204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->ll:Ljava/util/LinkedList;

    .line 205
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<Passwords"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->out:Ljava/lang/StringBuffer;

    .line 206
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v4, Lcom/withsecure/example/sieve/provider/DBContentProvider;->PASSWORDS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 207
    .local v0, "cursor0":Landroid/database/Cursor;
    new-instance v8, Landroid/content/CursorLoader;

    sget-object v3, Lcom/withsecure/example/sieve/provider/DBContentProvider;->KEYS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    .line 208
    .local v1, "cursor1":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 209
    const-string v2, "Password"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "s":Ljava/lang/String;
    const-string v3, "pin"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "s1":Ljava/lang/String;
    iget-object v4, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->out:Ljava/lang/StringBuffer;

    const-string v5, " Key=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" Pin=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    .line 213
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 214
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 215
    const-string/jumbo v6, "service"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "s2":Ljava/lang/String;
    const-string/jumbo v8, "username"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, "s3":Ljava/lang/String;
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 218
    .local v6, "s4":Ljava/lang/String;
    const-string v9, "password"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 219
    .local v9, "arr_b":[B
    iget-object v10, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->ll:Ljava/util/LinkedList;

    new-instance v11, Lcom/withsecure/example/sieve/util/PasswordEntry;

    const/4 v12, 0x0

    invoke-direct {v11, v7, v8, v6, v12}, Lcom/withsecure/example/sieve/util/PasswordEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 220
    iget-object v10, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    const/16 v11, 0x10

    invoke-virtual {v2, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9, v5}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->sendForDecryption(Ljava/lang/String;[BI)V

    .line 221
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 214
    .end local v6    # "s4":Ljava/lang/String;
    .end local v7    # "s2":Ljava/lang/String;
    .end local v8    # "s3":Ljava/lang/String;
    .end local v9    # "arr_b":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "Database exported"

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 228
    return-void
.end method

.method private getRestore(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 232
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const v1, 0x5f5e0ff

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 233
    invoke-static {v0}, Lcom/withsecure/example/sieve/database/DBParser;->getKey(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "mainPassword":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 235
    invoke-static {v0}, Lcom/withsecure/example/sieve/database/DBParser;->getPIN(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->PIN:Ljava/lang/String;

    .line 236
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 237
    invoke-static {v0}, Lcom/withsecure/example/sieve/database/DBParser;->readFile(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->ll:Ljava/util/LinkedList;

    .line 238
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/withsecure/example/sieve/provider/DBContentProvider;->KEYS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/withsecure/example/sieve/provider/DBContentProvider;->PASSWORDS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 240
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .local v2, "out":Landroid/content/ContentValues;
    const-string v3, "Password"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v3, "pin"

    iget-object v4, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->PIN:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/withsecure/example/sieve/provider/DBContentProvider;->KEYS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 244
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->ll:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 245
    iget-object v4, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->ll:Ljava/util/LinkedList;

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/withsecure/example/sieve/util/PasswordEntry;

    iget-object v7, v7, Lcom/withsecure/example/sieve/util/PasswordEntry;->password:Ljava/lang/String;

    invoke-virtual {v4, v5, v7, v6}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->sendForEncryption(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreate$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "arg0"    # Landroid/content/DialogInterface;
    .param p1, "arg1"    # I

    .line 288
    return-void
.end method

.method static synthetic lambda$onCreate$10(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "arg0"    # Landroid/content/DialogInterface;
    .param p1, "arg1"    # I

    .line 322
    return-void
.end method

.method static synthetic lambda$onCreate$11(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "arg0"    # Landroid/content/DialogInterface;
    .param p1, "arg1"    # I

    .line 328
    return-void
.end method

.method static synthetic lambda$onCreate$12(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "arg0"    # Landroid/content/DialogInterface;
    .param p1, "arg1"    # I

    .line 335
    return-void
.end method

.method static synthetic lambda$onCreate$13(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "arg0"    # Landroid/content/DialogInterface;
    .param p1, "arg1"    # I

    .line 342
    return-void
.end method

.method static synthetic lambda$onCreate$3(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "arg0"    # Landroid/content/DialogInterface;
    .param p1, "arg1"    # I

    .line 295
    return-void
.end method

.method static synthetic lambda$onCreate$5(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "arg0"    # Landroid/content/DialogInterface;
    .param p1, "arg1"    # I

    .line 302
    return-void
.end method

.method static synthetic lambda$onCreate$7(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "arg0"    # Landroid/content/DialogInterface;
    .param p1, "arg1"    # I

    .line 309
    return-void
.end method

.method static synthetic lambda$onCreate$9(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "arg0"    # Landroid/content/DialogInterface;
    .param p1, "arg1"    # I

    .line 316
    return-void
.end method

.method private restoreFromFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/withsecure/example/sieve/provider/FileBackupProvider;->FILE_DATABASE:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getRestore(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->errorCantRead:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 386
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "yaylogyay2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private restoreFromNet()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->netBackup:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-virtual {v0}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->performNetRestore()V

    .line 395
    return-void
.end method

.method private restoreFromSD()V
    .locals 2

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/FileSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x125

    invoke-virtual {p0, v0, v1}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 404
    return-void
.end method

.method private restoreFromString(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 412
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getRestore(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Unable to read / process data from server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "m_Settings"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->errorCantRead:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private unbind()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 427
    return-void
.end method


# virtual methods
.method public backupToNet(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->backupNet:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 79
    return-void
.end method

.method public backupToSD(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->backupSD:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 91
    return-void
.end method

.method public changePIN(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 102
    new-instance v7, Landroid/content/CursorLoader;

    sget-object v2, Lcom/withsecure/example/sieve/provider/DBContentProvider;->KEYS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 103
    .local v0, "cursor0":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    const-string v1, "pin"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->PIN:Ljava/lang/String;

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/withsecure/example/sieve/activity/PINActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.withsecure.example.sieve.PIN"

    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->PIN:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v2, "com.withsecure.example.sieve.REQUEST"

    const v3, 0x169db

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const/16 v2, 0x1c8

    invoke-virtual {p0, v1, v2}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    return-void
.end method

.method public connected()V
    .locals 0

    .line 117
    return-void
.end method

.method public decryptionReturned(Ljava/lang/String;I)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 121
    invoke-direct {p0, p1}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->finaliseEntry(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public deleteAll(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->deleteALL:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 132
    return-void
.end method

.method public encryptionReturned([BI)V
    .locals 0
    .param p1, "result"    # [B
    .param p2, "code"    # I

    .line 136
    invoke-direct {p0, p1}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->finaliseInsert([B)V

    .line 137
    return-void
.end method

.method synthetic lambda$onCreate$0$com-withsecure-example-sieve-activity-SettingsActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .line 286
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->backupToSD()V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-withsecure-example-sieve-activity-SettingsActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .line 293
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->deleteAll()V

    return-void
.end method

.method synthetic lambda$onCreate$4$com-withsecure-example-sieve-activity-SettingsActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .line 300
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->restoreFromSD()V

    return-void
.end method

.method synthetic lambda$onCreate$6$com-withsecure-example-sieve-activity-SettingsActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .line 307
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->restoreFromNet()V

    return-void
.end method

.method synthetic lambda$onCreate$8$com-withsecure-example-sieve-activity-SettingsActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .line 314
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->backupToNet()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 251
    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    .line 271
    return-void

    .line 261
    :sswitch_0
    if-ne p2, v0, :cond_0

    const-string v0, "com.withsecure.example.sieve.PIN"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->changePIN(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->errorCantChangePin:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 263
    return-void

    .line 266
    :cond_0
    return-void

    .line 253
    :sswitch_1
    if-ne p2, v0, :cond_1

    .line 254
    const-string v0, "com.withsecure.example.sieve.FILE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->restoreFromFile(Ljava/lang/String;)V

    .line 255
    return-void

    .line 258
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x125 -> :sswitch_1
        0x1c8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 0

    .line 275
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->finish()V

    .line 276
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 280
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 281
    sget v0, Lcom/withsecure/example/sieve/R$layout;->activity_settings:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->setContentView(I)V

    .line 282
    new-instance v0, Lcom/withsecure/example/sieve/util/NetBackupHandler;

    const-string v1, "10.0.2.2"

    const-string v2, "8001"

    invoke-direct {v0, v1, v2, p0}, Lcom/withsecure/example/sieve/util/NetBackupHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/withsecure/example/sieve/util/NetBackupHandler$ResultListener;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->netBackup:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    .line 284
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->backupSD:Landroid/app/AlertDialog$Builder;

    .line 285
    sget v1, Lcom/withsecure/example/sieve/R$string;->settings_confirm_backup:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Confirm"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 286
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->backupSD:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/withsecure/example/sieve/activity/SettingsActivity;)V

    const-string v3, "Yes"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 287
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->backupSD:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda9;-><init>()V

    const-string v4, "Cancel"

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 289
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->backupSD:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 291
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->deleteALL:Landroid/app/AlertDialog$Builder;

    .line 292
    sget v2, Lcom/withsecure/example/sieve/R$string;->settings_confirm_delete:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 293
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->deleteALL:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda10;-><init>(Lcom/withsecure/example/sieve/activity/SettingsActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 294
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->deleteALL:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->deleteALL:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 298
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->restore:Landroid/app/AlertDialog$Builder;

    .line 299
    sget v1, Lcom/withsecure/example/sieve/R$string;->settings_confirm_restore:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Restore"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 300
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->restore:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda12;-><init>(Lcom/withsecure/example/sieve/activity/SettingsActivity;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->restore:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 303
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->restore:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 305
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->netRestore:Landroid/app/AlertDialog$Builder;

    .line 306
    sget v2, Lcom/withsecure/example/sieve/R$string;->settings_confirm_netrestore:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 307
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->netRestore:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/withsecure/example/sieve/activity/SettingsActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 308
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->netRestore:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->netRestore:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 312
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->backupNet:Landroid/app/AlertDialog$Builder;

    .line 313
    sget v1, Lcom/withsecure/example/sieve/R$string;->settings_confirm_netbackup:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Backup"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 314
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->backupNet:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/withsecure/example/sieve/activity/SettingsActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->backupNet:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 317
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->backupNet:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 319
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->errorDBEmpty:Landroid/app/AlertDialog$Builder;

    .line 320
    sget v1, Lcom/withsecure/example/sieve/R$string;->settings_error_dbempty:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 321
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->errorDBEmpty:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda5;-><init>()V

    const-string v3, "OK"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 323
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->errorDBEmpty:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 325
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->errorCantRead:Landroid/app/AlertDialog$Builder;

    .line 326
    sget v2, Lcom/withsecure/example/sieve/R$string;->settings_error_cantread:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 327
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->errorCantRead:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 329
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->errorCantRead:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 331
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->errorCantChangePin:Landroid/app/AlertDialog$Builder;

    .line 332
    sget v2, Lcom/withsecure/example/sieve/R$string;->settings_error_cantchangepin:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 334
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->errorCantChangePin:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->errorCantChangePin:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 338
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->connectionError:Landroid/app/AlertDialog$Builder;

    .line 339
    sget v2, Lcom/withsecure/example/sieve/R$string;->service_error_cantconnect:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 341
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->connectionError:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/withsecure/example/sieve/activity/SettingsActivity$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 343
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->connectionError:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 346
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 350
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 351
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->unbind()V

    .line 352
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 356
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/service/CryptoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 358
    return-void
.end method

.method public onTaskFinish(ILjava/lang/String;)V
    .locals 3
    .param p1, "task"    # I
    .param p2, "result"    # Ljava/lang/String;

    .line 362
    sparse-switch p1, :sswitch_data_0

    .line 378
    return-void

    .line 372
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->restoreFromString(Ljava/lang/String;)V

    .line 373
    return-void

    .line 368
    :sswitch_1
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Database exported"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 369
    return-void

    .line 364
    :sswitch_2
    const-string v0, "m_Settings"

    const-string v1, "Error during backup."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5bbd -> :sswitch_2
        0x7043b -> :sswitch_1
        0xb6111 -> :sswitch_0
    .end sparse-switch
.end method

.method public restoreFromNet(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 398
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->netRestore:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 399
    return-void
.end method

.method public restoreFromSD(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 407
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->restore:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 408
    return-void
.end method

.method public sendFailed()V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/SettingsActivity;->connectionError:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 423
    return-void
.end method
